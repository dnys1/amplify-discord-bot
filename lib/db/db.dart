import 'dart:io';

import 'package:autothreader_bot/common.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;

part 'db.g.dart';

/// The Discord threads, indexed by their snowflake w/ external metadata.
class Threads extends Table {
  /// The thread ID (snowflake).
  IntColumn get snowflake => integer()();

  /// The linked Discussion thread ID.
  TextColumn get githubDiscussionId => text()();

  @override
  Set<Column> get primaryKey => {snowflake};
}

/// The Discord messages, belonging to a particular thread and linked to an
/// external GitHub discussion comment potentially.
class Messages extends Table {
  /// The message ID (snowflake).
  IntColumn get snowflake => integer()();

  /// The thread this message belongs to.
  IntColumn get threadId => integer().references(Threads, #snowflake)();

  /// The linked Discussion comment ID.
  TextColumn get githubDiscussionId => text()();

  @override
  Set<Column> get primaryKey => {snowflake};
}

@DriftDatabase(tables: [Threads, Messages])
class BotDb extends _$BotDb {
  BotDb() : super(_openDb());

  static LazyDatabase _openDb() => LazyDatabase(() async {
        final dir = isDebugMode ? Platform.environment['HOME']! : '/';
        final file = File(path.join(dir, 'bot', 'bot.db'));
        if (!await file.exists()) {
          await file.create(recursive: true);
        }
        return NativeDatabase(
          file,
          logStatements: true,
        );
      });

  @override
  int get schemaVersion => 1;

  Future<Thread?> getThread(int snowflake) {
    return (select(threads)..where((t) => t.snowflake.equals(snowflake)))
        .getSingleOrNull();
  }

  Future<void> saveThread({
    required int snowflake,
    required String githubDiscussionId,
  }) {
    return into(threads).insert(ThreadsCompanion.insert(
      snowflake: Value(snowflake),
      githubDiscussionId: githubDiscussionId,
    ));
  }

  Future<Message?> getMessage(int snowflake) {
    return (select(messages)..where((t) => t.snowflake.equals(snowflake)))
        .getSingleOrNull();
  }

  Future<void> saveMessage({
    required int snowflake,
    required int threadId,
    required String githubDiscussionId,
  }) {
    return into(messages).insert(MessagesCompanion.insert(
      snowflake: Value(snowflake),
      threadId: threadId,
      githubDiscussionId: githubDiscussionId,
    ));
  }
}
