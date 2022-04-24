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
  await client.init();

  final repositoryData = await client.getRepository(GithubRepo(owner, name));
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
