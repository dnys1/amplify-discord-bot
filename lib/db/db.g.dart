// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Thread extends DataClass implements Insertable<Thread> {
  /// The thread ID (snowflake).
  final int snowflake;

  /// The linked Discussion thread ID.
  final String githubDiscussionId;
  Thread({required this.snowflake, required this.githubDiscussionId});
  factory Thread.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Thread(
      snowflake: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}snowflake'])!,
      githubDiscussionId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}github_discussion_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['snowflake'] = Variable<int>(snowflake);
    map['github_discussion_id'] = Variable<String>(githubDiscussionId);
    return map;
  }

  ThreadsCompanion toCompanion(bool nullToAbsent) {
    return ThreadsCompanion(
      snowflake: Value(snowflake),
      githubDiscussionId: Value(githubDiscussionId),
    );
  }

  factory Thread.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Thread(
      snowflake: serializer.fromJson<int>(json['snowflake']),
      githubDiscussionId:
          serializer.fromJson<String>(json['githubDiscussionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'snowflake': serializer.toJson<int>(snowflake),
      'githubDiscussionId': serializer.toJson<String>(githubDiscussionId),
    };
  }

  Thread copyWith({int? snowflake, String? githubDiscussionId}) => Thread(
        snowflake: snowflake ?? this.snowflake,
        githubDiscussionId: githubDiscussionId ?? this.githubDiscussionId,
      );
  @override
  String toString() {
    return (StringBuffer('Thread(')
          ..write('snowflake: $snowflake, ')
          ..write('githubDiscussionId: $githubDiscussionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(snowflake, githubDiscussionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Thread &&
          other.snowflake == this.snowflake &&
          other.githubDiscussionId == this.githubDiscussionId);
}

class ThreadsCompanion extends UpdateCompanion<Thread> {
  final Value<int> snowflake;
  final Value<String> githubDiscussionId;
  const ThreadsCompanion({
    this.snowflake = const Value.absent(),
    this.githubDiscussionId = const Value.absent(),
  });
  ThreadsCompanion.insert({
    this.snowflake = const Value.absent(),
    required String githubDiscussionId,
  }) : githubDiscussionId = Value(githubDiscussionId);
  static Insertable<Thread> custom({
    Expression<int>? snowflake,
    Expression<String>? githubDiscussionId,
  }) {
    return RawValuesInsertable({
      if (snowflake != null) 'snowflake': snowflake,
      if (githubDiscussionId != null)
        'github_discussion_id': githubDiscussionId,
    });
  }

  ThreadsCompanion copyWith(
      {Value<int>? snowflake, Value<String>? githubDiscussionId}) {
    return ThreadsCompanion(
      snowflake: snowflake ?? this.snowflake,
      githubDiscussionId: githubDiscussionId ?? this.githubDiscussionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (snowflake.present) {
      map['snowflake'] = Variable<int>(snowflake.value);
    }
    if (githubDiscussionId.present) {
      map['github_discussion_id'] = Variable<String>(githubDiscussionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ThreadsCompanion(')
          ..write('snowflake: $snowflake, ')
          ..write('githubDiscussionId: $githubDiscussionId')
          ..write(')'))
        .toString();
  }
}

class $ThreadsTable extends Threads with TableInfo<$ThreadsTable, Thread> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ThreadsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _snowflakeMeta = const VerificationMeta('snowflake');
  @override
  late final GeneratedColumn<int?> snowflake = GeneratedColumn<int?>(
      'snowflake', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _githubDiscussionIdMeta =
      const VerificationMeta('githubDiscussionId');
  @override
  late final GeneratedColumn<String?> githubDiscussionId =
      GeneratedColumn<String?>('github_discussion_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [snowflake, githubDiscussionId];
  @override
  String get aliasedName => _alias ?? 'threads';
  @override
  String get actualTableName => 'threads';
  @override
  VerificationContext validateIntegrity(Insertable<Thread> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('snowflake')) {
      context.handle(_snowflakeMeta,
          snowflake.isAcceptableOrUnknown(data['snowflake']!, _snowflakeMeta));
    }
    if (data.containsKey('github_discussion_id')) {
      context.handle(
          _githubDiscussionIdMeta,
          githubDiscussionId.isAcceptableOrUnknown(
              data['github_discussion_id']!, _githubDiscussionIdMeta));
    } else if (isInserting) {
      context.missing(_githubDiscussionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {snowflake};
  @override
  Thread map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Thread.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ThreadsTable createAlias(String alias) {
    return $ThreadsTable(attachedDatabase, alias);
  }
}

class Message extends DataClass implements Insertable<Message> {
  /// The message ID (snowflake).
  final int snowflake;

  /// The thread this message belongs to.
  final int threadId;

  /// The linked Discussion comment ID.
  final String githubDiscussionId;
  Message(
      {required this.snowflake,
      required this.threadId,
      required this.githubDiscussionId});
  factory Message.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Message(
      snowflake: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}snowflake'])!,
      threadId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}thread_id'])!,
      githubDiscussionId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}github_discussion_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['snowflake'] = Variable<int>(snowflake);
    map['thread_id'] = Variable<int>(threadId);
    map['github_discussion_id'] = Variable<String>(githubDiscussionId);
    return map;
  }

  MessagesCompanion toCompanion(bool nullToAbsent) {
    return MessagesCompanion(
      snowflake: Value(snowflake),
      threadId: Value(threadId),
      githubDiscussionId: Value(githubDiscussionId),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Message(
      snowflake: serializer.fromJson<int>(json['snowflake']),
      threadId: serializer.fromJson<int>(json['threadId']),
      githubDiscussionId:
          serializer.fromJson<String>(json['githubDiscussionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'snowflake': serializer.toJson<int>(snowflake),
      'threadId': serializer.toJson<int>(threadId),
      'githubDiscussionId': serializer.toJson<String>(githubDiscussionId),
    };
  }

  Message copyWith(
          {int? snowflake, int? threadId, String? githubDiscussionId}) =>
      Message(
        snowflake: snowflake ?? this.snowflake,
        threadId: threadId ?? this.threadId,
        githubDiscussionId: githubDiscussionId ?? this.githubDiscussionId,
      );
  @override
  String toString() {
    return (StringBuffer('Message(')
          ..write('snowflake: $snowflake, ')
          ..write('threadId: $threadId, ')
          ..write('githubDiscussionId: $githubDiscussionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(snowflake, threadId, githubDiscussionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Message &&
          other.snowflake == this.snowflake &&
          other.threadId == this.threadId &&
          other.githubDiscussionId == this.githubDiscussionId);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<int> snowflake;
  final Value<int> threadId;
  final Value<String> githubDiscussionId;
  const MessagesCompanion({
    this.snowflake = const Value.absent(),
    this.threadId = const Value.absent(),
    this.githubDiscussionId = const Value.absent(),
  });
  MessagesCompanion.insert({
    this.snowflake = const Value.absent(),
    required int threadId,
    required String githubDiscussionId,
  })  : threadId = Value(threadId),
        githubDiscussionId = Value(githubDiscussionId);
  static Insertable<Message> custom({
    Expression<int>? snowflake,
    Expression<int>? threadId,
    Expression<String>? githubDiscussionId,
  }) {
    return RawValuesInsertable({
      if (snowflake != null) 'snowflake': snowflake,
      if (threadId != null) 'thread_id': threadId,
      if (githubDiscussionId != null)
        'github_discussion_id': githubDiscussionId,
    });
  }

  MessagesCompanion copyWith(
      {Value<int>? snowflake,
      Value<int>? threadId,
      Value<String>? githubDiscussionId}) {
    return MessagesCompanion(
      snowflake: snowflake ?? this.snowflake,
      threadId: threadId ?? this.threadId,
      githubDiscussionId: githubDiscussionId ?? this.githubDiscussionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (snowflake.present) {
      map['snowflake'] = Variable<int>(snowflake.value);
    }
    if (threadId.present) {
      map['thread_id'] = Variable<int>(threadId.value);
    }
    if (githubDiscussionId.present) {
      map['github_discussion_id'] = Variable<String>(githubDiscussionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessagesCompanion(')
          ..write('snowflake: $snowflake, ')
          ..write('threadId: $threadId, ')
          ..write('githubDiscussionId: $githubDiscussionId')
          ..write(')'))
        .toString();
  }
}

class $MessagesTable extends Messages with TableInfo<$MessagesTable, Message> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessagesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _snowflakeMeta = const VerificationMeta('snowflake');
  @override
  late final GeneratedColumn<int?> snowflake = GeneratedColumn<int?>(
      'snowflake', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _threadIdMeta = const VerificationMeta('threadId');
  @override
  late final GeneratedColumn<int?> threadId = GeneratedColumn<int?>(
      'thread_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES threads (snowflake)');
  final VerificationMeta _githubDiscussionIdMeta =
      const VerificationMeta('githubDiscussionId');
  @override
  late final GeneratedColumn<String?> githubDiscussionId =
      GeneratedColumn<String?>('github_discussion_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [snowflake, threadId, githubDiscussionId];
  @override
  String get aliasedName => _alias ?? 'messages';
  @override
  String get actualTableName => 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('snowflake')) {
      context.handle(_snowflakeMeta,
          snowflake.isAcceptableOrUnknown(data['snowflake']!, _snowflakeMeta));
    }
    if (data.containsKey('thread_id')) {
      context.handle(_threadIdMeta,
          threadId.isAcceptableOrUnknown(data['thread_id']!, _threadIdMeta));
    } else if (isInserting) {
      context.missing(_threadIdMeta);
    }
    if (data.containsKey('github_discussion_id')) {
      context.handle(
          _githubDiscussionIdMeta,
          githubDiscussionId.isAcceptableOrUnknown(
              data['github_discussion_id']!, _githubDiscussionIdMeta));
    } else if (isInserting) {
      context.missing(_githubDiscussionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {snowflake};
  @override
  Message map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Message.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(attachedDatabase, alias);
  }
}

abstract class _$BotDb extends GeneratedDatabase {
  _$BotDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ThreadsTable threads = $ThreadsTable(this);
  late final $MessagesTable messages = $MessagesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [threads, messages];
}
