import 'dart:convert';
import 'dart:io';

import 'package:autothreader_bot/github/__generated__/queries.data.gql.dart';
import 'package:autothreader_bot/github/__generated__/queries.req.gql.dart';
import 'package:collection/collection.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';
import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:retry/retry.dart';

const appIdEnv = 'GITHUB_APP_ID';
const privateKeyEnv = 'GITHUB_PRIVATE_KEY';
const reposEnv = 'GITHUB_REPOS';

String _getEnv(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) {
    throw Exception('No $name variable');
  }
  return value;
}

GithubClient getEnvClient([Logger? logger]) {
  final appId = _getEnv(appIdEnv);
  final privateKeyPem = _getEnv(privateKeyEnv);
  final repos = _getEnv(reposEnv).split(',').map(GithubRepo.fromTag).toList();
  final privateKey = JsonWebKey.fromPem(privateKeyPem);
  return GithubClient(repos, appId, privateKey);
}

@immutable
class GithubRepo {
  const GithubRepo(this.owner, this.name);

  factory GithubRepo.fromTag(String tag) {
    final parts = tag.split('/');
    if (parts.length != 2) {
      throw ArgumentError('Invalid tag: $tag (must be owner/tag)');
    }
    return GithubRepo(parts[0], parts[1]);
  }

  final String owner;
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GithubRepo && owner == other.owner && name == other.name;

  @override
  int get hashCode => Object.hash(owner, name);
}

class GithubAppHttpClient extends http.BaseClient {
  GithubAppHttpClient(
    this._appId,
    this._privateKey,
  );

  static final _logger = Logger('GithubAppHttpClient');
  static const _retryer = RetryOptions(
    maxAttempts: 5,
  );

  final String _appId;
  final JsonWebKey _privateKey;
  final http.Client _baseClient = http.Client();

  DateTime? _exp;
  late JsonWebSignature _jws;

  String get _token {
    if (_exp != null && _exp!.isAfter(DateTime.now())) {
      return _jws.toCompactSerialization();
    }

    // From: https://docs.github.com/en/developers/apps/building-github-apps/authenticating-with-github-apps#authenticating-as-a-github-app
    final now = DateTime.now();
    final exp = now.add(const Duration(minutes: 10));
    final claims = JsonWebTokenClaims.fromJson({
      'iat': (now.millisecondsSinceEpoch ~/ 1000) - 60,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
      'iss': _appId,
    });

    _exp = exp;
    _jws = (JsonWebSignatureBuilder()
          ..addRecipient(_privateKey, algorithm: 'RS256')
          ..jsonContent = claims.toJson())
        .build();
    _logger.fine('Got JWT: ${_jws.toCompactSerialization()}');
    return _jws.toCompactSerialization();
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    return _retryer.retry(
      () async {
        request.headers['Accept'] = 'application/vnd.github.v3+json';
        request.headers['Authorization'] = 'Bearer $_token';
        final response = await _baseClient.send(request);
        if (response.statusCode == 401) {
          throw Exception('Unauthorized');
        }
        return response;
      },
      onRetry: (e) => _logger.severe('Request failed. Retrying...', e),
    );
  }
}

class GithubClient {
  static final logger = Logger('GithubClient');
  static const _json = JsonEncoder.withIndent('  ');

  final List<GithubRepo> _repos;
  final String _appId;
  final JsonWebKey _privateKey;

  late final _httpClient = GithubAppHttpClient(_appId, _privateKey);

  late final Map<GithubRepo, String> _repoIds;
  late final int _installationId;
  DateTime? _exp;
  late String _token;

  /// Initializes the Github client to perform expensive work at launch.
  Future<void> init() async {
    _installationId = await _createInstallation();
    logger.fine('Installation ID: $_installationId');
    await _authenticate();
    logger.fine('Authorized');
    _repoIds = await _getRepoIds();
    logger.fine('Got repo IDs');
  }

  Future<int> _createInstallation() async {
    try {
      final resp = await _httpClient.get(
        Uri.parse('https://api.github.com/app/installations'),
      );
      if (resp.statusCode >= 300) {
        throw Exception('${resp.statusCode}: ${resp.body}');
      }
      final installations = jsonDecode(resp.body) as List;
      if (installations.isEmpty) {
        throw Exception('No installations found');
      }
      return (installations.first as Map)['id'] as int;
    } on Exception catch (e) {
      logger.shout('Error creating installation', e);
      rethrow;
    }
  }

  Future<void> _authenticate() async {
    if (_exp != null && _exp!.isAfter(DateTime.now())) {
      return;
    }
    try {
      // https://docs.github.com/en/rest/reference/apps#create-an-installation-access-token-for-an-app
      final resp = await _httpClient.post(
        Uri.parse(
          'https://api.github.com/app/installations/$_installationId/access_tokens',
        ),
        body: jsonEncode({
          'repositories': _repos.map((repo) => repo.name).toList(),
        }),
      );
      if (resp.statusCode >= 300) {
        throw Exception('${resp.statusCode}: ${resp.body}');
      }
      final respBody = jsonDecode(resp.body) as Map;
      final token = respBody['token'] as String?;
      final tokenExp = respBody['expires_at'] as String?;
      if (token == null || tokenExp == null) {
        throw Exception('Invalid response: ${resp.body}');
      }
      _token = token;
      _exp = DateTime.parse(tokenExp);
      logger.fine('Installation token: $token');
    } on Exception catch (e) {
      logger.shout('Error authenticating to Github', e);
      rethrow;
    }
  }

  Future<Link> get client async {
    await _authenticate();
    return Link.concat(
      TransformLink(
        requestTransformer: (request) => request.withContextEntry(
          HttpLinkHeaders(headers: {
            'Authorization': 'Bearer $_token',
          }),
        ),
      ),
      HttpLink('https://api.github.com/graphql'),
    );
  }

  Future<Map<GithubRepo, String>> _getRepoIds() async {
    final repoData = await Future.wait(
      _repos.map(getRepository),
      eagerError: true,
    );
    return Map.fromIterables(
      _repos,
      repoData.map((repo) => repo.repository!.id),
    );
  }

  GithubClient(
    this._repos,
    this._appId,
    this._privateKey,
  );

  String convert(Object? o) => _json.convert(o);

  Never throwError(Response resp) {
    throw Exception(_json.convert(resp.response));
  }

  Future<GGetRepositoryData> getRepository(GithubRepo repo) async {
    final req = GGetRepository(
      (b) => b.vars
        ..owner = repo.owner
        ..name = repo.name,
    );
    final client = await this.client;
    final resp = await client
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;

    final data = resp.data;
    final errors = resp.errors;
    if (data == null || (errors != null && errors.isNotEmpty)) {
      throwError(resp);
    }

    return GGetRepositoryData.fromJson(data)!;
  }

  Future<void> resolveDiscussion({
    required String commentId,
    String? clientMutationId,
  }) async {
    final req = GResolveDiscussion(
      (b) => b.vars
        ..commentId = commentId
        ..clientMutationId = clientMutationId,
    );
    final client = await this.client;
    final resp = await client
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;

    final data = resp.data;
    final errors = resp.errors;
    if (data == null || (errors != null && errors.isNotEmpty)) {
      throwError(resp);
    }
  }

  Future<GCreateDiscussionData> createDiscussion({
    String? repoId,
    required String categoryId,
    required String title,
    required String body,
    String? clientMutationId,
  }) async {
    repoId ??= _repoIds.values.singleOrNull;
    if (repoId == null) {
      throw Exception('Multiple repos found. Must set `repoId` parameter.');
    }
    final req = GCreateDiscussion(
      (b) => b.vars
        ..repositoryId = repoId
        ..categoryId = categoryId
        ..title = title
        ..body = body
        ..clientMutationId = clientMutationId,
    );
    final client = await this.client;
    final resp = await client
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;

    final data = resp.data;
    final errors = resp.errors;
    if (data == null || (errors != null && errors.isNotEmpty)) {
      throwError(resp);
    }

    final discussionData = GCreateDiscussionData.fromJson(data)!;
    final discussionId = discussionData.createDiscussion?.discussion?.id;
    if (discussionId == null) {
      throwError(resp);
    }

    final lockReq = GLockDiscussion(
      (b) => b.vars
        ..discussionId = discussionId
        ..clientMutationId = clientMutationId,
    );
    final lockResp = await client
        .request(Request(
          operation: lockReq.operation,
          variables: lockReq.vars.toJson(),
        ))
        .first;

    final lockData = lockResp.data;
    final lockErrors = lockResp.errors;
    if (lockData == null || (lockErrors != null && lockErrors.isNotEmpty)) {
      GithubClient.logger.severe(
        'Could not lock $discussionId',
        convert(lockResp.response),
      );
      return discussionData;
    }
    final locked = GLockDiscussionData.fromJson(lockData)!
        .lockLockable
        ?.lockedRecord
        ?.locked;
    if (locked == null || !locked) {
      GithubClient.logger.severe(
        'Could not lock $discussionId',
        convert(lockResp.response),
      );
    }

    return discussionData;
  }

  Future<GAddDiscussionCommentData> addDiscussionComment({
    required String discussionId,
    required String body,
    String? clientMutationId,
    String? replyToId,
  }) async {
    final req = GAddDiscussionComment(
      (b) => b.vars
        ..discussionId = discussionId
        ..body = body
        ..clientMutationId = clientMutationId
        ..replyToId = replyToId,
    );
    final client = await this.client;
    final resp = await client
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;

    final data = resp.data;
    final errors = resp.errors;
    if (data == null || (errors != null && errors.isNotEmpty)) {
      throwError(resp);
    }

    return GAddDiscussionCommentData.fromJson(data)!;
  }
}
