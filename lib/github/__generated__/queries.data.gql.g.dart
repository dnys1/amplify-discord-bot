// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateDiscussionData> _$gCreateDiscussionDataSerializer =
    new _$GCreateDiscussionDataSerializer();
Serializer<GCreateDiscussionData_createDiscussion>
    _$gCreateDiscussionDataCreateDiscussionSerializer =
    new _$GCreateDiscussionData_createDiscussionSerializer();
Serializer<GCreateDiscussionData_createDiscussion_discussion>
    _$gCreateDiscussionDataCreateDiscussionDiscussionSerializer =
    new _$GCreateDiscussionData_createDiscussion_discussionSerializer();
Serializer<GLockDiscussionData> _$gLockDiscussionDataSerializer =
    new _$GLockDiscussionDataSerializer();
Serializer<GLockDiscussionData_lockLockable>
    _$gLockDiscussionDataLockLockableSerializer =
    new _$GLockDiscussionData_lockLockableSerializer();
Serializer<GLockDiscussionData_lockLockable_lockedRecord>
    _$gLockDiscussionDataLockLockableLockedRecordSerializer =
    new _$GLockDiscussionData_lockLockable_lockedRecordSerializer();
Serializer<GAddDiscussionCommentData> _$gAddDiscussionCommentDataSerializer =
    new _$GAddDiscussionCommentDataSerializer();
Serializer<GAddDiscussionCommentData_addDiscussionComment>
    _$gAddDiscussionCommentDataAddDiscussionCommentSerializer =
    new _$GAddDiscussionCommentData_addDiscussionCommentSerializer();
Serializer<GAddDiscussionCommentData_addDiscussionComment_comment>
    _$gAddDiscussionCommentDataAddDiscussionCommentCommentSerializer =
    new _$GAddDiscussionCommentData_addDiscussionComment_commentSerializer();
Serializer<GGetRepositoryData> _$gGetRepositoryDataSerializer =
    new _$GGetRepositoryDataSerializer();
Serializer<GGetRepositoryData_repository>
    _$gGetRepositoryDataRepositorySerializer =
    new _$GGetRepositoryData_repositorySerializer();
Serializer<GGetRepositoryData_repository_discussionCategories>
    _$gGetRepositoryDataRepositoryDiscussionCategoriesSerializer =
    new _$GGetRepositoryData_repository_discussionCategoriesSerializer();
Serializer<GGetRepositoryData_repository_discussionCategories_nodes>
    _$gGetRepositoryDataRepositoryDiscussionCategoriesNodesSerializer =
    new _$GGetRepositoryData_repository_discussionCategories_nodesSerializer();

class _$GCreateDiscussionDataSerializer
    implements StructuredSerializer<GCreateDiscussionData> {
  @override
  final Iterable<Type> types = const [
    GCreateDiscussionData,
    _$GCreateDiscussionData
  ];
  @override
  final String wireName = 'GCreateDiscussionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDiscussionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createDiscussion;
    if (value != null) {
      result
        ..add('createDiscussion')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateDiscussionData_createDiscussion)));
    }
    return result;
  }

  @override
  GCreateDiscussionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDiscussionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createDiscussion':
          result.createDiscussion.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateDiscussionData_createDiscussion))!
              as GCreateDiscussionData_createDiscussion);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDiscussionData_createDiscussionSerializer
    implements StructuredSerializer<GCreateDiscussionData_createDiscussion> {
  @override
  final Iterable<Type> types = const [
    GCreateDiscussionData_createDiscussion,
    _$GCreateDiscussionData_createDiscussion
  ];
  @override
  final String wireName = 'GCreateDiscussionData_createDiscussion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDiscussionData_createDiscussion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discussion;
    if (value != null) {
      result
        ..add('discussion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCreateDiscussionData_createDiscussion_discussion)));
    }
    return result;
  }

  @override
  GCreateDiscussionData_createDiscussion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDiscussionData_createDiscussionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discussion':
          result.discussion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCreateDiscussionData_createDiscussion_discussion))!
              as GCreateDiscussionData_createDiscussion_discussion);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDiscussionData_createDiscussion_discussionSerializer
    implements
        StructuredSerializer<
            GCreateDiscussionData_createDiscussion_discussion> {
  @override
  final Iterable<Type> types = const [
    GCreateDiscussionData_createDiscussion_discussion,
    _$GCreateDiscussionData_createDiscussion_discussion
  ];
  @override
  final String wireName = 'GCreateDiscussionData_createDiscussion_discussion';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreateDiscussionData_createDiscussion_discussion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GCreateDiscussionData_createDiscussion_discussion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCreateDiscussionData_createDiscussion_discussionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GLockDiscussionDataSerializer
    implements StructuredSerializer<GLockDiscussionData> {
  @override
  final Iterable<Type> types = const [
    GLockDiscussionData,
    _$GLockDiscussionData
  ];
  @override
  final String wireName = 'GLockDiscussionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLockDiscussionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lockLockable;
    if (value != null) {
      result
        ..add('lockLockable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLockDiscussionData_lockLockable)));
    }
    return result;
  }

  @override
  GLockDiscussionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLockDiscussionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lockLockable':
          result.lockLockable.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLockDiscussionData_lockLockable))!
              as GLockDiscussionData_lockLockable);
          break;
      }
    }

    return result.build();
  }
}

class _$GLockDiscussionData_lockLockableSerializer
    implements StructuredSerializer<GLockDiscussionData_lockLockable> {
  @override
  final Iterable<Type> types = const [
    GLockDiscussionData_lockLockable,
    _$GLockDiscussionData_lockLockable
  ];
  @override
  final String wireName = 'GLockDiscussionData_lockLockable';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLockDiscussionData_lockLockable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lockedRecord;
    if (value != null) {
      result
        ..add('lockedRecord')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GLockDiscussionData_lockLockable_lockedRecord)));
    }
    return result;
  }

  @override
  GLockDiscussionData_lockLockable deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLockDiscussionData_lockLockableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lockedRecord':
          result.lockedRecord.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GLockDiscussionData_lockLockable_lockedRecord))!
              as GLockDiscussionData_lockLockable_lockedRecord);
          break;
      }
    }

    return result.build();
  }
}

class _$GLockDiscussionData_lockLockable_lockedRecordSerializer
    implements
        StructuredSerializer<GLockDiscussionData_lockLockable_lockedRecord> {
  @override
  final Iterable<Type> types = const [
    GLockDiscussionData_lockLockable_lockedRecord,
    _$GLockDiscussionData_lockLockable_lockedRecord
  ];
  @override
  final String wireName = 'GLockDiscussionData_lockLockable_lockedRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLockDiscussionData_lockLockable_lockedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'locked',
      serializers.serialize(object.locked, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GLockDiscussionData_lockLockable_lockedRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLockDiscussionData_lockLockable_lockedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddDiscussionCommentDataSerializer
    implements StructuredSerializer<GAddDiscussionCommentData> {
  @override
  final Iterable<Type> types = const [
    GAddDiscussionCommentData,
    _$GAddDiscussionCommentData
  ];
  @override
  final String wireName = 'GAddDiscussionCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddDiscussionCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.addDiscussionComment;
    if (value != null) {
      result
        ..add('addDiscussionComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAddDiscussionCommentData_addDiscussionComment)));
    }
    return result;
  }

  @override
  GAddDiscussionCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddDiscussionCommentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addDiscussionComment':
          result.addDiscussionComment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAddDiscussionCommentData_addDiscussionComment))!
              as GAddDiscussionCommentData_addDiscussionComment);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddDiscussionCommentData_addDiscussionCommentSerializer
    implements
        StructuredSerializer<GAddDiscussionCommentData_addDiscussionComment> {
  @override
  final Iterable<Type> types = const [
    GAddDiscussionCommentData_addDiscussionComment,
    _$GAddDiscussionCommentData_addDiscussionComment
  ];
  @override
  final String wireName = 'GAddDiscussionCommentData_addDiscussionComment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAddDiscussionCommentData_addDiscussionComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAddDiscussionCommentData_addDiscussionComment_comment)));
    }
    return result;
  }

  @override
  GAddDiscussionCommentData_addDiscussionComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddDiscussionCommentData_addDiscussionCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAddDiscussionCommentData_addDiscussionComment_comment))!
              as GAddDiscussionCommentData_addDiscussionComment_comment);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddDiscussionCommentData_addDiscussionComment_commentSerializer
    implements
        StructuredSerializer<
            GAddDiscussionCommentData_addDiscussionComment_comment> {
  @override
  final Iterable<Type> types = const [
    GAddDiscussionCommentData_addDiscussionComment_comment,
    _$GAddDiscussionCommentData_addDiscussionComment_comment
  ];
  @override
  final String wireName =
      'GAddDiscussionCommentData_addDiscussionComment_comment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAddDiscussionCommentData_addDiscussionComment_comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAddDiscussionCommentData_addDiscussionComment_comment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAddDiscussionCommentData_addDiscussionComment_commentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositoryDataSerializer
    implements StructuredSerializer<GGetRepositoryData> {
  @override
  final Iterable<Type> types = const [GGetRepositoryData, _$GGetRepositoryData];
  @override
  final String wireName = 'GGetRepositoryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRepositoryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.repository;
    if (value != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetRepositoryData_repository)));
    }
    return result;
  }

  @override
  GGetRepositoryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRepositoryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetRepositoryData_repository))!
              as GGetRepositoryData_repository);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositoryData_repositorySerializer
    implements StructuredSerializer<GGetRepositoryData_repository> {
  @override
  final Iterable<Type> types = const [
    GGetRepositoryData_repository,
    _$GGetRepositoryData_repository
  ];
  @override
  final String wireName = 'GGetRepositoryData_repository';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRepositoryData_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'discussionCategories',
      serializers.serialize(object.discussionCategories,
          specifiedType: const FullType(
              GGetRepositoryData_repository_discussionCategories)),
    ];

    return result;
  }

  @override
  GGetRepositoryData_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRepositoryData_repositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discussionCategories':
          result.discussionCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetRepositoryData_repository_discussionCategories))!
              as GGetRepositoryData_repository_discussionCategories);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositoryData_repository_discussionCategoriesSerializer
    implements
        StructuredSerializer<
            GGetRepositoryData_repository_discussionCategories> {
  @override
  final Iterable<Type> types = const [
    GGetRepositoryData_repository_discussionCategories,
    _$GGetRepositoryData_repository_discussionCategories
  ];
  @override
  final String wireName = 'GGetRepositoryData_repository_discussionCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRepositoryData_repository_discussionCategories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetRepositoryData_repository_discussionCategories_nodes)
            ])));
    }
    return result;
  }

  @override
  GGetRepositoryData_repository_discussionCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRepositoryData_repository_discussionCategoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetRepositoryData_repository_discussionCategories_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositoryData_repository_discussionCategories_nodesSerializer
    implements
        StructuredSerializer<
            GGetRepositoryData_repository_discussionCategories_nodes> {
  @override
  final Iterable<Type> types = const [
    GGetRepositoryData_repository_discussionCategories_nodes,
    _$GGetRepositoryData_repository_discussionCategories_nodes
  ];
  @override
  final String wireName =
      'GGetRepositoryData_repository_discussionCategories_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRepositoryData_repository_discussionCategories_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRepositoryData_repository_discussionCategories_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRepositoryData_repository_discussionCategories_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDiscussionData extends GCreateDiscussionData {
  @override
  final String G__typename;
  @override
  final GCreateDiscussionData_createDiscussion? createDiscussion;

  factory _$GCreateDiscussionData(
          [void Function(GCreateDiscussionDataBuilder)? updates]) =>
      (new GCreateDiscussionDataBuilder()..update(updates)).build();

  _$GCreateDiscussionData._({required this.G__typename, this.createDiscussion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateDiscussionData', 'G__typename');
  }

  @override
  GCreateDiscussionData rebuild(
          void Function(GCreateDiscussionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDiscussionDataBuilder toBuilder() =>
      new GCreateDiscussionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDiscussionData &&
        G__typename == other.G__typename &&
        createDiscussion == other.createDiscussion;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createDiscussion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateDiscussionData')
          ..add('G__typename', G__typename)
          ..add('createDiscussion', createDiscussion))
        .toString();
  }
}

class GCreateDiscussionDataBuilder
    implements Builder<GCreateDiscussionData, GCreateDiscussionDataBuilder> {
  _$GCreateDiscussionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateDiscussionData_createDiscussionBuilder? _createDiscussion;
  GCreateDiscussionData_createDiscussionBuilder get createDiscussion =>
      _$this._createDiscussion ??=
          new GCreateDiscussionData_createDiscussionBuilder();
  set createDiscussion(
          GCreateDiscussionData_createDiscussionBuilder? createDiscussion) =>
      _$this._createDiscussion = createDiscussion;

  GCreateDiscussionDataBuilder() {
    GCreateDiscussionData._initializeBuilder(this);
  }

  GCreateDiscussionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createDiscussion = $v.createDiscussion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDiscussionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDiscussionData;
  }

  @override
  void update(void Function(GCreateDiscussionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDiscussionData build() {
    _$GCreateDiscussionData _$result;
    try {
      _$result = _$v ??
          new _$GCreateDiscussionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateDiscussionData', 'G__typename'),
              createDiscussion: _createDiscussion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createDiscussion';
        _createDiscussion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateDiscussionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDiscussionData_createDiscussion
    extends GCreateDiscussionData_createDiscussion {
  @override
  final String G__typename;
  @override
  final String? clientMutationId;
  @override
  final GCreateDiscussionData_createDiscussion_discussion? discussion;

  factory _$GCreateDiscussionData_createDiscussion(
          [void Function(GCreateDiscussionData_createDiscussionBuilder)?
              updates]) =>
      (new GCreateDiscussionData_createDiscussionBuilder()..update(updates))
          .build();

  _$GCreateDiscussionData_createDiscussion._(
      {required this.G__typename, this.clientMutationId, this.discussion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateDiscussionData_createDiscussion', 'G__typename');
  }

  @override
  GCreateDiscussionData_createDiscussion rebuild(
          void Function(GCreateDiscussionData_createDiscussionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDiscussionData_createDiscussionBuilder toBuilder() =>
      new GCreateDiscussionData_createDiscussionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDiscussionData_createDiscussion &&
        G__typename == other.G__typename &&
        clientMutationId == other.clientMutationId &&
        discussion == other.discussion;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), clientMutationId.hashCode),
        discussion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GCreateDiscussionData_createDiscussion')
          ..add('G__typename', G__typename)
          ..add('clientMutationId', clientMutationId)
          ..add('discussion', discussion))
        .toString();
  }
}

class GCreateDiscussionData_createDiscussionBuilder
    implements
        Builder<GCreateDiscussionData_createDiscussion,
            GCreateDiscussionData_createDiscussionBuilder> {
  _$GCreateDiscussionData_createDiscussion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GCreateDiscussionData_createDiscussion_discussionBuilder? _discussion;
  GCreateDiscussionData_createDiscussion_discussionBuilder get discussion =>
      _$this._discussion ??=
          new GCreateDiscussionData_createDiscussion_discussionBuilder();
  set discussion(
          GCreateDiscussionData_createDiscussion_discussionBuilder?
              discussion) =>
      _$this._discussion = discussion;

  GCreateDiscussionData_createDiscussionBuilder() {
    GCreateDiscussionData_createDiscussion._initializeBuilder(this);
  }

  GCreateDiscussionData_createDiscussionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _clientMutationId = $v.clientMutationId;
      _discussion = $v.discussion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDiscussionData_createDiscussion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDiscussionData_createDiscussion;
  }

  @override
  void update(
      void Function(GCreateDiscussionData_createDiscussionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDiscussionData_createDiscussion build() {
    _$GCreateDiscussionData_createDiscussion _$result;
    try {
      _$result = _$v ??
          new _$GCreateDiscussionData_createDiscussion._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GCreateDiscussionData_createDiscussion', 'G__typename'),
              clientMutationId: clientMutationId,
              discussion: _discussion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'discussion';
        _discussion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateDiscussionData_createDiscussion',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDiscussionData_createDiscussion_discussion
    extends GCreateDiscussionData_createDiscussion_discussion {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GURI url;

  factory _$GCreateDiscussionData_createDiscussion_discussion(
          [void Function(
                  GCreateDiscussionData_createDiscussion_discussionBuilder)?
              updates]) =>
      (new GCreateDiscussionData_createDiscussion_discussionBuilder()
            ..update(updates))
          .build();

  _$GCreateDiscussionData_createDiscussion_discussion._(
      {required this.G__typename, required this.id, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCreateDiscussionData_createDiscussion_discussion', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCreateDiscussionData_createDiscussion_discussion', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GCreateDiscussionData_createDiscussion_discussion', 'url');
  }

  @override
  GCreateDiscussionData_createDiscussion_discussion rebuild(
          void Function(
                  GCreateDiscussionData_createDiscussion_discussionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDiscussionData_createDiscussion_discussionBuilder toBuilder() =>
      new GCreateDiscussionData_createDiscussion_discussionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDiscussionData_createDiscussion_discussion &&
        G__typename == other.G__typename &&
        id == other.id &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GCreateDiscussionData_createDiscussion_discussion')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class GCreateDiscussionData_createDiscussion_discussionBuilder
    implements
        Builder<GCreateDiscussionData_createDiscussion_discussion,
            GCreateDiscussionData_createDiscussion_discussionBuilder> {
  _$GCreateDiscussionData_createDiscussion_discussion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GCreateDiscussionData_createDiscussion_discussionBuilder() {
    GCreateDiscussionData_createDiscussion_discussion._initializeBuilder(this);
  }

  GCreateDiscussionData_createDiscussion_discussionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _url = $v.url.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDiscussionData_createDiscussion_discussion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDiscussionData_createDiscussion_discussion;
  }

  @override
  void update(
      void Function(GCreateDiscussionData_createDiscussion_discussionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDiscussionData_createDiscussion_discussion build() {
    _$GCreateDiscussionData_createDiscussion_discussion _$result;
    try {
      _$result = _$v ??
          new _$GCreateDiscussionData_createDiscussion_discussion._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GCreateDiscussionData_createDiscussion_discussion',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  'GCreateDiscussionData_createDiscussion_discussion', 'id'),
              url: url.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateDiscussionData_createDiscussion_discussion',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLockDiscussionData extends GLockDiscussionData {
  @override
  final String G__typename;
  @override
  final GLockDiscussionData_lockLockable? lockLockable;

  factory _$GLockDiscussionData(
          [void Function(GLockDiscussionDataBuilder)? updates]) =>
      (new GLockDiscussionDataBuilder()..update(updates)).build();

  _$GLockDiscussionData._({required this.G__typename, this.lockLockable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLockDiscussionData', 'G__typename');
  }

  @override
  GLockDiscussionData rebuild(
          void Function(GLockDiscussionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLockDiscussionDataBuilder toBuilder() =>
      new GLockDiscussionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLockDiscussionData &&
        G__typename == other.G__typename &&
        lockLockable == other.lockLockable;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), lockLockable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLockDiscussionData')
          ..add('G__typename', G__typename)
          ..add('lockLockable', lockLockable))
        .toString();
  }
}

class GLockDiscussionDataBuilder
    implements Builder<GLockDiscussionData, GLockDiscussionDataBuilder> {
  _$GLockDiscussionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLockDiscussionData_lockLockableBuilder? _lockLockable;
  GLockDiscussionData_lockLockableBuilder get lockLockable =>
      _$this._lockLockable ??= new GLockDiscussionData_lockLockableBuilder();
  set lockLockable(GLockDiscussionData_lockLockableBuilder? lockLockable) =>
      _$this._lockLockable = lockLockable;

  GLockDiscussionDataBuilder() {
    GLockDiscussionData._initializeBuilder(this);
  }

  GLockDiscussionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lockLockable = $v.lockLockable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLockDiscussionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLockDiscussionData;
  }

  @override
  void update(void Function(GLockDiscussionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLockDiscussionData build() {
    _$GLockDiscussionData _$result;
    try {
      _$result = _$v ??
          new _$GLockDiscussionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLockDiscussionData', 'G__typename'),
              lockLockable: _lockLockable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lockLockable';
        _lockLockable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLockDiscussionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLockDiscussionData_lockLockable
    extends GLockDiscussionData_lockLockable {
  @override
  final String G__typename;
  @override
  final GLockDiscussionData_lockLockable_lockedRecord? lockedRecord;

  factory _$GLockDiscussionData_lockLockable(
          [void Function(GLockDiscussionData_lockLockableBuilder)? updates]) =>
      (new GLockDiscussionData_lockLockableBuilder()..update(updates)).build();

  _$GLockDiscussionData_lockLockable._(
      {required this.G__typename, this.lockedRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLockDiscussionData_lockLockable', 'G__typename');
  }

  @override
  GLockDiscussionData_lockLockable rebuild(
          void Function(GLockDiscussionData_lockLockableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLockDiscussionData_lockLockableBuilder toBuilder() =>
      new GLockDiscussionData_lockLockableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLockDiscussionData_lockLockable &&
        G__typename == other.G__typename &&
        lockedRecord == other.lockedRecord;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), lockedRecord.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLockDiscussionData_lockLockable')
          ..add('G__typename', G__typename)
          ..add('lockedRecord', lockedRecord))
        .toString();
  }
}

class GLockDiscussionData_lockLockableBuilder
    implements
        Builder<GLockDiscussionData_lockLockable,
            GLockDiscussionData_lockLockableBuilder> {
  _$GLockDiscussionData_lockLockable? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLockDiscussionData_lockLockable_lockedRecordBuilder? _lockedRecord;
  GLockDiscussionData_lockLockable_lockedRecordBuilder get lockedRecord =>
      _$this._lockedRecord ??=
          new GLockDiscussionData_lockLockable_lockedRecordBuilder();
  set lockedRecord(
          GLockDiscussionData_lockLockable_lockedRecordBuilder? lockedRecord) =>
      _$this._lockedRecord = lockedRecord;

  GLockDiscussionData_lockLockableBuilder() {
    GLockDiscussionData_lockLockable._initializeBuilder(this);
  }

  GLockDiscussionData_lockLockableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lockedRecord = $v.lockedRecord?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLockDiscussionData_lockLockable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLockDiscussionData_lockLockable;
  }

  @override
  void update(void Function(GLockDiscussionData_lockLockableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLockDiscussionData_lockLockable build() {
    _$GLockDiscussionData_lockLockable _$result;
    try {
      _$result = _$v ??
          new _$GLockDiscussionData_lockLockable._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GLockDiscussionData_lockLockable', 'G__typename'),
              lockedRecord: _lockedRecord?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lockedRecord';
        _lockedRecord?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLockDiscussionData_lockLockable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLockDiscussionData_lockLockable_lockedRecord
    extends GLockDiscussionData_lockLockable_lockedRecord {
  @override
  final String G__typename;
  @override
  final bool locked;

  factory _$GLockDiscussionData_lockLockable_lockedRecord(
          [void Function(GLockDiscussionData_lockLockable_lockedRecordBuilder)?
              updates]) =>
      (new GLockDiscussionData_lockLockable_lockedRecordBuilder()
            ..update(updates))
          .build();

  _$GLockDiscussionData_lockLockable_lockedRecord._(
      {required this.G__typename, required this.locked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GLockDiscussionData_lockLockable_lockedRecord', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        locked, 'GLockDiscussionData_lockLockable_lockedRecord', 'locked');
  }

  @override
  GLockDiscussionData_lockLockable_lockedRecord rebuild(
          void Function(GLockDiscussionData_lockLockable_lockedRecordBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLockDiscussionData_lockLockable_lockedRecordBuilder toBuilder() =>
      new GLockDiscussionData_lockLockable_lockedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLockDiscussionData_lockLockable_lockedRecord &&
        G__typename == other.G__typename &&
        locked == other.locked;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), locked.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GLockDiscussionData_lockLockable_lockedRecord')
          ..add('G__typename', G__typename)
          ..add('locked', locked))
        .toString();
  }
}

class GLockDiscussionData_lockLockable_lockedRecordBuilder
    implements
        Builder<GLockDiscussionData_lockLockable_lockedRecord,
            GLockDiscussionData_lockLockable_lockedRecordBuilder> {
  _$GLockDiscussionData_lockLockable_lockedRecord? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  GLockDiscussionData_lockLockable_lockedRecordBuilder() {
    GLockDiscussionData_lockLockable_lockedRecord._initializeBuilder(this);
  }

  GLockDiscussionData_lockLockable_lockedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locked = $v.locked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLockDiscussionData_lockLockable_lockedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLockDiscussionData_lockLockable_lockedRecord;
  }

  @override
  void update(
      void Function(GLockDiscussionData_lockLockable_lockedRecordBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLockDiscussionData_lockLockable_lockedRecord build() {
    final _$result = _$v ??
        new _$GLockDiscussionData_lockLockable_lockedRecord._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GLockDiscussionData_lockLockable_lockedRecord', 'G__typename'),
            locked: BuiltValueNullFieldError.checkNotNull(locked,
                'GLockDiscussionData_lockLockable_lockedRecord', 'locked'));
    replace(_$result);
    return _$result;
  }
}

class _$GAddDiscussionCommentData extends GAddDiscussionCommentData {
  @override
  final String G__typename;
  @override
  final GAddDiscussionCommentData_addDiscussionComment? addDiscussionComment;

  factory _$GAddDiscussionCommentData(
          [void Function(GAddDiscussionCommentDataBuilder)? updates]) =>
      (new GAddDiscussionCommentDataBuilder()..update(updates)).build();

  _$GAddDiscussionCommentData._(
      {required this.G__typename, this.addDiscussionComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAddDiscussionCommentData', 'G__typename');
  }

  @override
  GAddDiscussionCommentData rebuild(
          void Function(GAddDiscussionCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddDiscussionCommentDataBuilder toBuilder() =>
      new GAddDiscussionCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddDiscussionCommentData &&
        G__typename == other.G__typename &&
        addDiscussionComment == other.addDiscussionComment;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), addDiscussionComment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddDiscussionCommentData')
          ..add('G__typename', G__typename)
          ..add('addDiscussionComment', addDiscussionComment))
        .toString();
  }
}

class GAddDiscussionCommentDataBuilder
    implements
        Builder<GAddDiscussionCommentData, GAddDiscussionCommentDataBuilder> {
  _$GAddDiscussionCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddDiscussionCommentData_addDiscussionCommentBuilder? _addDiscussionComment;
  GAddDiscussionCommentData_addDiscussionCommentBuilder
      get addDiscussionComment => _$this._addDiscussionComment ??=
          new GAddDiscussionCommentData_addDiscussionCommentBuilder();
  set addDiscussionComment(
          GAddDiscussionCommentData_addDiscussionCommentBuilder?
              addDiscussionComment) =>
      _$this._addDiscussionComment = addDiscussionComment;

  GAddDiscussionCommentDataBuilder() {
    GAddDiscussionCommentData._initializeBuilder(this);
  }

  GAddDiscussionCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addDiscussionComment = $v.addDiscussionComment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddDiscussionCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddDiscussionCommentData;
  }

  @override
  void update(void Function(GAddDiscussionCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddDiscussionCommentData build() {
    _$GAddDiscussionCommentData _$result;
    try {
      _$result = _$v ??
          new _$GAddDiscussionCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAddDiscussionCommentData', 'G__typename'),
              addDiscussionComment: _addDiscussionComment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addDiscussionComment';
        _addDiscussionComment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddDiscussionCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddDiscussionCommentData_addDiscussionComment
    extends GAddDiscussionCommentData_addDiscussionComment {
  @override
  final String G__typename;
  @override
  final String? clientMutationId;
  @override
  final GAddDiscussionCommentData_addDiscussionComment_comment? comment;

  factory _$GAddDiscussionCommentData_addDiscussionComment(
          [void Function(GAddDiscussionCommentData_addDiscussionCommentBuilder)?
              updates]) =>
      (new GAddDiscussionCommentData_addDiscussionCommentBuilder()
            ..update(updates))
          .build();

  _$GAddDiscussionCommentData_addDiscussionComment._(
      {required this.G__typename, this.clientMutationId, this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAddDiscussionCommentData_addDiscussionComment', 'G__typename');
  }

  @override
  GAddDiscussionCommentData_addDiscussionComment rebuild(
          void Function(GAddDiscussionCommentData_addDiscussionCommentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddDiscussionCommentData_addDiscussionCommentBuilder toBuilder() =>
      new GAddDiscussionCommentData_addDiscussionCommentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddDiscussionCommentData_addDiscussionComment &&
        G__typename == other.G__typename &&
        clientMutationId == other.clientMutationId &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), clientMutationId.hashCode),
        comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAddDiscussionCommentData_addDiscussionComment')
          ..add('G__typename', G__typename)
          ..add('clientMutationId', clientMutationId)
          ..add('comment', comment))
        .toString();
  }
}

class GAddDiscussionCommentData_addDiscussionCommentBuilder
    implements
        Builder<GAddDiscussionCommentData_addDiscussionComment,
            GAddDiscussionCommentData_addDiscussionCommentBuilder> {
  _$GAddDiscussionCommentData_addDiscussionComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GAddDiscussionCommentData_addDiscussionComment_commentBuilder? _comment;
  GAddDiscussionCommentData_addDiscussionComment_commentBuilder get comment =>
      _$this._comment ??=
          new GAddDiscussionCommentData_addDiscussionComment_commentBuilder();
  set comment(
          GAddDiscussionCommentData_addDiscussionComment_commentBuilder?
              comment) =>
      _$this._comment = comment;

  GAddDiscussionCommentData_addDiscussionCommentBuilder() {
    GAddDiscussionCommentData_addDiscussionComment._initializeBuilder(this);
  }

  GAddDiscussionCommentData_addDiscussionCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _clientMutationId = $v.clientMutationId;
      _comment = $v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddDiscussionCommentData_addDiscussionComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddDiscussionCommentData_addDiscussionComment;
  }

  @override
  void update(
      void Function(GAddDiscussionCommentData_addDiscussionCommentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddDiscussionCommentData_addDiscussionComment build() {
    _$GAddDiscussionCommentData_addDiscussionComment _$result;
    try {
      _$result = _$v ??
          new _$GAddDiscussionCommentData_addDiscussionComment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAddDiscussionCommentData_addDiscussionComment',
                  'G__typename'),
              clientMutationId: clientMutationId,
              comment: _comment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comment';
        _comment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddDiscussionCommentData_addDiscussionComment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddDiscussionCommentData_addDiscussionComment_comment
    extends GAddDiscussionCommentData_addDiscussionComment_comment {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GAddDiscussionCommentData_addDiscussionComment_comment(
          [void Function(
                  GAddDiscussionCommentData_addDiscussionComment_commentBuilder)?
              updates]) =>
      (new GAddDiscussionCommentData_addDiscussionComment_commentBuilder()
            ..update(updates))
          .build();

  _$GAddDiscussionCommentData_addDiscussionComment_comment._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GAddDiscussionCommentData_addDiscussionComment_comment',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAddDiscussionCommentData_addDiscussionComment_comment', 'id');
  }

  @override
  GAddDiscussionCommentData_addDiscussionComment_comment rebuild(
          void Function(
                  GAddDiscussionCommentData_addDiscussionComment_commentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddDiscussionCommentData_addDiscussionComment_commentBuilder toBuilder() =>
      new GAddDiscussionCommentData_addDiscussionComment_commentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddDiscussionCommentData_addDiscussionComment_comment &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAddDiscussionCommentData_addDiscussionComment_comment')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GAddDiscussionCommentData_addDiscussionComment_commentBuilder
    implements
        Builder<GAddDiscussionCommentData_addDiscussionComment_comment,
            GAddDiscussionCommentData_addDiscussionComment_commentBuilder> {
  _$GAddDiscussionCommentData_addDiscussionComment_comment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GAddDiscussionCommentData_addDiscussionComment_commentBuilder() {
    GAddDiscussionCommentData_addDiscussionComment_comment._initializeBuilder(
        this);
  }

  GAddDiscussionCommentData_addDiscussionComment_commentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddDiscussionCommentData_addDiscussionComment_comment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddDiscussionCommentData_addDiscussionComment_comment;
  }

  @override
  void update(
      void Function(
              GAddDiscussionCommentData_addDiscussionComment_commentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddDiscussionCommentData_addDiscussionComment_comment build() {
    final _$result = _$v ??
        new _$GAddDiscussionCommentData_addDiscussionComment_comment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GAddDiscussionCommentData_addDiscussionComment_comment',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GAddDiscussionCommentData_addDiscussionComment_comment',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepositoryData extends GGetRepositoryData {
  @override
  final String G__typename;
  @override
  final GGetRepositoryData_repository? repository;

  factory _$GGetRepositoryData(
          [void Function(GGetRepositoryDataBuilder)? updates]) =>
      (new GGetRepositoryDataBuilder()..update(updates)).build();

  _$GGetRepositoryData._({required this.G__typename, this.repository})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRepositoryData', 'G__typename');
  }

  @override
  GGetRepositoryData rebuild(
          void Function(GGetRepositoryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryDataBuilder toBuilder() =>
      new GGetRepositoryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepositoryData &&
        G__typename == other.G__typename &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRepositoryData')
          ..add('G__typename', G__typename)
          ..add('repository', repository))
        .toString();
  }
}

class GGetRepositoryDataBuilder
    implements Builder<GGetRepositoryData, GGetRepositoryDataBuilder> {
  _$GGetRepositoryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetRepositoryData_repositoryBuilder? _repository;
  GGetRepositoryData_repositoryBuilder get repository =>
      _$this._repository ??= new GGetRepositoryData_repositoryBuilder();
  set repository(GGetRepositoryData_repositoryBuilder? repository) =>
      _$this._repository = repository;

  GGetRepositoryDataBuilder() {
    GGetRepositoryData._initializeBuilder(this);
  }

  GGetRepositoryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepositoryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepositoryData;
  }

  @override
  void update(void Function(GGetRepositoryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepositoryData build() {
    _$GGetRepositoryData _$result;
    try {
      _$result = _$v ??
          new _$GGetRepositoryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRepositoryData', 'G__typename'),
              repository: _repository?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRepositoryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepositoryData_repository extends GGetRepositoryData_repository {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GGetRepositoryData_repository_discussionCategories discussionCategories;

  factory _$GGetRepositoryData_repository(
          [void Function(GGetRepositoryData_repositoryBuilder)? updates]) =>
      (new GGetRepositoryData_repositoryBuilder()..update(updates)).build();

  _$GGetRepositoryData_repository._(
      {required this.G__typename,
      required this.id,
      required this.discussionCategories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRepositoryData_repository', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRepositoryData_repository', 'id');
    BuiltValueNullFieldError.checkNotNull(discussionCategories,
        'GGetRepositoryData_repository', 'discussionCategories');
  }

  @override
  GGetRepositoryData_repository rebuild(
          void Function(GGetRepositoryData_repositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryData_repositoryBuilder toBuilder() =>
      new GGetRepositoryData_repositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepositoryData_repository &&
        G__typename == other.G__typename &&
        id == other.id &&
        discussionCategories == other.discussionCategories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), id.hashCode),
        discussionCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRepositoryData_repository')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('discussionCategories', discussionCategories))
        .toString();
  }
}

class GGetRepositoryData_repositoryBuilder
    implements
        Builder<GGetRepositoryData_repository,
            GGetRepositoryData_repositoryBuilder> {
  _$GGetRepositoryData_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetRepositoryData_repository_discussionCategoriesBuilder?
      _discussionCategories;
  GGetRepositoryData_repository_discussionCategoriesBuilder
      get discussionCategories => _$this._discussionCategories ??=
          new GGetRepositoryData_repository_discussionCategoriesBuilder();
  set discussionCategories(
          GGetRepositoryData_repository_discussionCategoriesBuilder?
              discussionCategories) =>
      _$this._discussionCategories = discussionCategories;

  GGetRepositoryData_repositoryBuilder() {
    GGetRepositoryData_repository._initializeBuilder(this);
  }

  GGetRepositoryData_repositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _discussionCategories = $v.discussionCategories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepositoryData_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepositoryData_repository;
  }

  @override
  void update(void Function(GGetRepositoryData_repositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepositoryData_repository build() {
    _$GGetRepositoryData_repository _$result;
    try {
      _$result = _$v ??
          new _$GGetRepositoryData_repository._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRepositoryData_repository', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRepositoryData_repository', 'id'),
              discussionCategories: discussionCategories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'discussionCategories';
        discussionCategories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRepositoryData_repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepositoryData_repository_discussionCategories
    extends GGetRepositoryData_repository_discussionCategories {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetRepositoryData_repository_discussionCategories_nodes>?
      nodes;

  factory _$GGetRepositoryData_repository_discussionCategories(
          [void Function(
                  GGetRepositoryData_repository_discussionCategoriesBuilder)?
              updates]) =>
      (new GGetRepositoryData_repository_discussionCategoriesBuilder()
            ..update(updates))
          .build();

  _$GGetRepositoryData_repository_discussionCategories._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRepositoryData_repository_discussionCategories', 'G__typename');
  }

  @override
  GGetRepositoryData_repository_discussionCategories rebuild(
          void Function(
                  GGetRepositoryData_repository_discussionCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryData_repository_discussionCategoriesBuilder toBuilder() =>
      new GGetRepositoryData_repository_discussionCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepositoryData_repository_discussionCategories &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), nodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRepositoryData_repository_discussionCategories')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GGetRepositoryData_repository_discussionCategoriesBuilder
    implements
        Builder<GGetRepositoryData_repository_discussionCategories,
            GGetRepositoryData_repository_discussionCategoriesBuilder> {
  _$GGetRepositoryData_repository_discussionCategories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetRepositoryData_repository_discussionCategories_nodes>? _nodes;
  ListBuilder<GGetRepositoryData_repository_discussionCategories_nodes>
      get nodes => _$this._nodes ??= new ListBuilder<
          GGetRepositoryData_repository_discussionCategories_nodes>();
  set nodes(
          ListBuilder<GGetRepositoryData_repository_discussionCategories_nodes>?
              nodes) =>
      _$this._nodes = nodes;

  GGetRepositoryData_repository_discussionCategoriesBuilder() {
    GGetRepositoryData_repository_discussionCategories._initializeBuilder(this);
  }

  GGetRepositoryData_repository_discussionCategoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepositoryData_repository_discussionCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepositoryData_repository_discussionCategories;
  }

  @override
  void update(
      void Function(GGetRepositoryData_repository_discussionCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepositoryData_repository_discussionCategories build() {
    _$GGetRepositoryData_repository_discussionCategories _$result;
    try {
      _$result = _$v ??
          new _$GGetRepositoryData_repository_discussionCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetRepositoryData_repository_discussionCategories',
                  'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRepositoryData_repository_discussionCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepositoryData_repository_discussionCategories_nodes
    extends GGetRepositoryData_repository_discussionCategories_nodes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetRepositoryData_repository_discussionCategories_nodes(
          [void Function(
                  GGetRepositoryData_repository_discussionCategories_nodesBuilder)?
              updates]) =>
      (new GGetRepositoryData_repository_discussionCategories_nodesBuilder()
            ..update(updates))
          .build();

  _$GGetRepositoryData_repository_discussionCategories_nodes._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetRepositoryData_repository_discussionCategories_nodes',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRepositoryData_repository_discussionCategories_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        'GGetRepositoryData_repository_discussionCategories_nodes', 'name');
  }

  @override
  GGetRepositoryData_repository_discussionCategories_nodes rebuild(
          void Function(
                  GGetRepositoryData_repository_discussionCategories_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryData_repository_discussionCategories_nodesBuilder toBuilder() =>
      new GGetRepositoryData_repository_discussionCategories_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepositoryData_repository_discussionCategories_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRepositoryData_repository_discussionCategories_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetRepositoryData_repository_discussionCategories_nodesBuilder
    implements
        Builder<GGetRepositoryData_repository_discussionCategories_nodes,
            GGetRepositoryData_repository_discussionCategories_nodesBuilder> {
  _$GGetRepositoryData_repository_discussionCategories_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRepositoryData_repository_discussionCategories_nodesBuilder() {
    GGetRepositoryData_repository_discussionCategories_nodes._initializeBuilder(
        this);
  }

  GGetRepositoryData_repository_discussionCategories_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepositoryData_repository_discussionCategories_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepositoryData_repository_discussionCategories_nodes;
  }

  @override
  void update(
      void Function(
              GGetRepositoryData_repository_discussionCategories_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepositoryData_repository_discussionCategories_nodes build() {
    final _$result = _$v ??
        new _$GGetRepositoryData_repository_discussionCategories_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetRepositoryData_repository_discussionCategories_nodes',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GGetRepositoryData_repository_discussionCategories_nodes',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GGetRepositoryData_repository_discussionCategories_nodes',
                'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
