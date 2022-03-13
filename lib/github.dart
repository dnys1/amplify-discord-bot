import 'dart:convert';
import 'dart:io';

import 'package:autothreader_bot/github/__generated__/queries.data.gql.dart';
import 'package:autothreader_bot/github/__generated__/queries.req.gql.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';
import 'package:logging/logging.dart';

GithubClient getEnvClient([Logger? logger]) {
  final githubToken = Platform.environment['GITHUB_TOKEN'];
  if (githubToken == null) {
    logger?.severe('No github token provided');
    exit(1);
  }

  return GithubClient(token: githubToken);
}

class GithubClient {
  static final logger = Logger('GithubClient');
  static const _json = JsonEncoder.withIndent('  ');

  final Link client;

  const GithubClient._(this.client);

  factory GithubClient({
    required String token,
  }) {
    final client = Link.concat(
      TransformLink(
        requestTransformer: (request) => request.withContextEntry(
          HttpLinkHeaders(headers: {
            'Authorization': 'Bearer $token',
          }),
        ),
      ),
      HttpLink('https://api.github.com/graphql'),
    );
    return GithubClient._(client);
  }

  String convert(Object? o) => _json.convert(o);

  Never throwError(Response resp) {
    throw Exception(_json.convert(resp.response));
  }

  Future<GGetRepositoryData> getRepository({
    required String owner,
    required String name,
  }) async {
    final req = GGetRepository(
      (b) => b.vars
        ..owner = owner
        ..name = name,
    );
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
}
