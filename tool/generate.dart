import 'dart:convert';
import 'dart:io';

import 'package:autothreader_bot/github.dart';
import 'package:recase/recase.dart';

const filename = 'lib/repo/repo.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    usage();
  }
  final repo = args[0].split('/');
  if (repo.length != 2) {
    usage();
  }
  final owner = repo[0];
  final name = repo[1];
  final client = getEnvClient();

  final repositoryData = await client.getRepository(owner: owner, name: name);
  final repositoryId = repositoryData.repository?.id;
  final discussionCategories =
      repositoryData.repository?.discussionCategories.nodes;

  if (repositoryId == null || discussionCategories == null) {
    stderr.writeln('No repository or discussion categories found');
    exit(1);
  }

  final sb = StringBuffer('''
// Generated code. Do not modify.
// Run tool/generate.dart to re-generate.

import 'package:autothreader_bot/github/__generated__/queries.data.gql.dart';
import 'package:autothreader_bot/github/__generated__/queries.req.gql.dart';
import 'package:autothreader_bot/github.dart';
import 'package:gql_exec/gql_exec.dart';

extension RepoOps on GithubClient {
  Future<GCreateDiscussionData> createDiscussion({
    required DiscussionCategory category,
    required String title,
    required String body,
    String? clientMutationId,
  }) async {
    final req = GCreateDiscussion(
      (b) => b.vars
        ..repositoryId = repositoryId
        ..categoryId = category.value
        ..title = title
        ..body = body
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
        'Could not lock \$discussionId',
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
        'Could not lock \$discussionId',
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

class DiscussionCategory {
  const DiscussionCategory._(this.name, this.value);

  final String name;
  final String value;

''');

  for (final discussionCategory in discussionCategories) {
    final id = discussionCategory.id;
    final name = discussionCategory.name.replaceAll('&', '').camelCase;

    sb.writeln(
        "static const DiscussionCategory $name = DiscussionCategory._('$name', '$id');");
  }
  sb
    ..writeln('}')
    ..writeln();

  sb.writeln("const repositoryId = '$repositoryId';");

  File(filename)
    ..createSync()
    ..writeAsStringSync(sb.toString());

  final formatCmd = await Process.start('dart', [
    'format',
    filename,
  ]);
  formatCmd.stdout
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen(stdout.writeln);
  formatCmd.stderr
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen(stderr.writeln);
  if (exitCode != 0) {
    stderr.writeln('`dart format` failed: $exitCode.');
    exit(exitCode);
  }
}

Never usage() {
  stderr.writeln('Usage: generate.dart username/repo');
  exit(1);
}
