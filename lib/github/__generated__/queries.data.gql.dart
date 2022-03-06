// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:autothreader_bot/github/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:autothreader_bot/github/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.data.gql.g.dart';

abstract class GCreateDiscussionData
    implements Built<GCreateDiscussionData, GCreateDiscussionDataBuilder> {
  GCreateDiscussionData._();

  factory GCreateDiscussionData(
          [Function(GCreateDiscussionDataBuilder b) updates]) =
      _$GCreateDiscussionData;

  static void _initializeBuilder(GCreateDiscussionDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateDiscussionData_createDiscussion? get createDiscussion;
  static Serializer<GCreateDiscussionData> get serializer =>
      _$gCreateDiscussionDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateDiscussionData.serializer, this)
          as Map<String, dynamic>);
  static GCreateDiscussionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateDiscussionData.serializer, json);
}

abstract class GCreateDiscussionData_createDiscussion
    implements
        Built<GCreateDiscussionData_createDiscussion,
            GCreateDiscussionData_createDiscussionBuilder> {
  GCreateDiscussionData_createDiscussion._();

  factory GCreateDiscussionData_createDiscussion(
          [Function(GCreateDiscussionData_createDiscussionBuilder b) updates]) =
      _$GCreateDiscussionData_createDiscussion;

  static void _initializeBuilder(
          GCreateDiscussionData_createDiscussionBuilder b) =>
      b..G__typename = 'CreateDiscussionPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get clientMutationId;
  GCreateDiscussionData_createDiscussion_discussion? get discussion;
  static Serializer<GCreateDiscussionData_createDiscussion> get serializer =>
      _$gCreateDiscussionDataCreateDiscussionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateDiscussionData_createDiscussion.serializer, this)
      as Map<String, dynamic>);
  static GCreateDiscussionData_createDiscussion? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateDiscussionData_createDiscussion.serializer, json);
}

abstract class GCreateDiscussionData_createDiscussion_discussion
    implements
        Built<GCreateDiscussionData_createDiscussion_discussion,
            GCreateDiscussionData_createDiscussion_discussionBuilder> {
  GCreateDiscussionData_createDiscussion_discussion._();

  factory GCreateDiscussionData_createDiscussion_discussion(
      [Function(GCreateDiscussionData_createDiscussion_discussionBuilder b)
          updates]) = _$GCreateDiscussionData_createDiscussion_discussion;

  static void _initializeBuilder(
          GCreateDiscussionData_createDiscussion_discussionBuilder b) =>
      b..G__typename = 'Discussion';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GURI get url;
  static Serializer<GCreateDiscussionData_createDiscussion_discussion>
      get serializer =>
          _$gCreateDiscussionDataCreateDiscussionDiscussionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateDiscussionData_createDiscussion_discussion.serializer, this)
      as Map<String, dynamic>);
  static GCreateDiscussionData_createDiscussion_discussion? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateDiscussionData_createDiscussion_discussion.serializer, json);
}

abstract class GLockDiscussionData
    implements Built<GLockDiscussionData, GLockDiscussionDataBuilder> {
  GLockDiscussionData._();

  factory GLockDiscussionData(
      [Function(GLockDiscussionDataBuilder b) updates]) = _$GLockDiscussionData;

  static void _initializeBuilder(GLockDiscussionDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLockDiscussionData_lockLockable? get lockLockable;
  static Serializer<GLockDiscussionData> get serializer =>
      _$gLockDiscussionDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLockDiscussionData.serializer, this)
          as Map<String, dynamic>);
  static GLockDiscussionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLockDiscussionData.serializer, json);
}

abstract class GLockDiscussionData_lockLockable
    implements
        Built<GLockDiscussionData_lockLockable,
            GLockDiscussionData_lockLockableBuilder> {
  GLockDiscussionData_lockLockable._();

  factory GLockDiscussionData_lockLockable(
          [Function(GLockDiscussionData_lockLockableBuilder b) updates]) =
      _$GLockDiscussionData_lockLockable;

  static void _initializeBuilder(GLockDiscussionData_lockLockableBuilder b) =>
      b..G__typename = 'LockLockablePayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLockDiscussionData_lockLockable_lockedRecord? get lockedRecord;
  static Serializer<GLockDiscussionData_lockLockable> get serializer =>
      _$gLockDiscussionDataLockLockableSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GLockDiscussionData_lockLockable.serializer, this)
      as Map<String, dynamic>);
  static GLockDiscussionData_lockLockable? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLockDiscussionData_lockLockable.serializer, json);
}

abstract class GLockDiscussionData_lockLockable_lockedRecord
    implements
        Built<GLockDiscussionData_lockLockable_lockedRecord,
            GLockDiscussionData_lockLockable_lockedRecordBuilder> {
  GLockDiscussionData_lockLockable_lockedRecord._();

  factory GLockDiscussionData_lockLockable_lockedRecord(
      [Function(GLockDiscussionData_lockLockable_lockedRecordBuilder b)
          updates]) = _$GLockDiscussionData_lockLockable_lockedRecord;

  static void _initializeBuilder(
          GLockDiscussionData_lockLockable_lockedRecordBuilder b) =>
      b..G__typename = 'Lockable';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get locked;
  static Serializer<GLockDiscussionData_lockLockable_lockedRecord>
      get serializer => _$gLockDiscussionDataLockLockableLockedRecordSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GLockDiscussionData_lockLockable_lockedRecord.serializer, this)
      as Map<String, dynamic>);
  static GLockDiscussionData_lockLockable_lockedRecord? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GLockDiscussionData_lockLockable_lockedRecord.serializer, json);
}

abstract class GAddDiscussionCommentData
    implements
        Built<GAddDiscussionCommentData, GAddDiscussionCommentDataBuilder> {
  GAddDiscussionCommentData._();

  factory GAddDiscussionCommentData(
          [Function(GAddDiscussionCommentDataBuilder b) updates]) =
      _$GAddDiscussionCommentData;

  static void _initializeBuilder(GAddDiscussionCommentDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddDiscussionCommentData_addDiscussionComment? get addDiscussionComment;
  static Serializer<GAddDiscussionCommentData> get serializer =>
      _$gAddDiscussionCommentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddDiscussionCommentData.serializer, this)
          as Map<String, dynamic>);
  static GAddDiscussionCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAddDiscussionCommentData.serializer, json);
}

abstract class GAddDiscussionCommentData_addDiscussionComment
    implements
        Built<GAddDiscussionCommentData_addDiscussionComment,
            GAddDiscussionCommentData_addDiscussionCommentBuilder> {
  GAddDiscussionCommentData_addDiscussionComment._();

  factory GAddDiscussionCommentData_addDiscussionComment(
      [Function(GAddDiscussionCommentData_addDiscussionCommentBuilder b)
          updates]) = _$GAddDiscussionCommentData_addDiscussionComment;

  static void _initializeBuilder(
          GAddDiscussionCommentData_addDiscussionCommentBuilder b) =>
      b..G__typename = 'AddDiscussionCommentPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get clientMutationId;
  GAddDiscussionCommentData_addDiscussionComment_comment? get comment;
  static Serializer<GAddDiscussionCommentData_addDiscussionComment>
      get serializer =>
          _$gAddDiscussionCommentDataAddDiscussionCommentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddDiscussionCommentData_addDiscussionComment.serializer, this)
      as Map<String, dynamic>);
  static GAddDiscussionCommentData_addDiscussionComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddDiscussionCommentData_addDiscussionComment.serializer, json);
}

abstract class GAddDiscussionCommentData_addDiscussionComment_comment
    implements
        Built<GAddDiscussionCommentData_addDiscussionComment_comment,
            GAddDiscussionCommentData_addDiscussionComment_commentBuilder> {
  GAddDiscussionCommentData_addDiscussionComment_comment._();

  factory GAddDiscussionCommentData_addDiscussionComment_comment(
      [Function(GAddDiscussionCommentData_addDiscussionComment_commentBuilder b)
          updates]) = _$GAddDiscussionCommentData_addDiscussionComment_comment;

  static void _initializeBuilder(
          GAddDiscussionCommentData_addDiscussionComment_commentBuilder b) =>
      b..G__typename = 'DiscussionComment';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GAddDiscussionCommentData_addDiscussionComment_comment>
      get serializer =>
          _$gAddDiscussionCommentDataAddDiscussionCommentCommentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddDiscussionCommentData_addDiscussionComment_comment.serializer,
      this) as Map<String, dynamic>);
  static GAddDiscussionCommentData_addDiscussionComment_comment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddDiscussionCommentData_addDiscussionComment_comment.serializer,
          json);
}

abstract class GGetRepositoryData
    implements Built<GGetRepositoryData, GGetRepositoryDataBuilder> {
  GGetRepositoryData._();

  factory GGetRepositoryData([Function(GGetRepositoryDataBuilder b) updates]) =
      _$GGetRepositoryData;

  static void _initializeBuilder(GGetRepositoryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetRepositoryData_repository? get repository;
  static Serializer<GGetRepositoryData> get serializer =>
      _$gGetRepositoryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRepositoryData.serializer, this)
          as Map<String, dynamic>);
  static GGetRepositoryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRepositoryData.serializer, json);
}

abstract class GGetRepositoryData_repository
    implements
        Built<GGetRepositoryData_repository,
            GGetRepositoryData_repositoryBuilder> {
  GGetRepositoryData_repository._();

  factory GGetRepositoryData_repository(
          [Function(GGetRepositoryData_repositoryBuilder b) updates]) =
      _$GGetRepositoryData_repository;

  static void _initializeBuilder(GGetRepositoryData_repositoryBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GGetRepositoryData_repository_discussionCategories get discussionCategories;
  static Serializer<GGetRepositoryData_repository> get serializer =>
      _$gGetRepositoryDataRepositorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRepositoryData_repository.serializer, this) as Map<String, dynamic>);
  static GGetRepositoryData_repository? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRepositoryData_repository.serializer, json);
}

abstract class GGetRepositoryData_repository_discussionCategories
    implements
        Built<GGetRepositoryData_repository_discussionCategories,
            GGetRepositoryData_repository_discussionCategoriesBuilder> {
  GGetRepositoryData_repository_discussionCategories._();

  factory GGetRepositoryData_repository_discussionCategories(
      [Function(GGetRepositoryData_repository_discussionCategoriesBuilder b)
          updates]) = _$GGetRepositoryData_repository_discussionCategories;

  static void _initializeBuilder(
          GGetRepositoryData_repository_discussionCategoriesBuilder b) =>
      b..G__typename = 'DiscussionCategoryConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRepositoryData_repository_discussionCategories_nodes>?
      get nodes;
  static Serializer<GGetRepositoryData_repository_discussionCategories>
      get serializer =>
          _$gGetRepositoryDataRepositoryDiscussionCategoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRepositoryData_repository_discussionCategories.serializer, this)
      as Map<String, dynamic>);
  static GGetRepositoryData_repository_discussionCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRepositoryData_repository_discussionCategories.serializer, json);
}

abstract class GGetRepositoryData_repository_discussionCategories_nodes
    implements
        Built<GGetRepositoryData_repository_discussionCategories_nodes,
            GGetRepositoryData_repository_discussionCategories_nodesBuilder> {
  GGetRepositoryData_repository_discussionCategories_nodes._();

  factory GGetRepositoryData_repository_discussionCategories_nodes(
      [Function(
              GGetRepositoryData_repository_discussionCategories_nodesBuilder b)
          updates]) = _$GGetRepositoryData_repository_discussionCategories_nodes;

  static void _initializeBuilder(
          GGetRepositoryData_repository_discussionCategories_nodesBuilder b) =>
      b..G__typename = 'DiscussionCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetRepositoryData_repository_discussionCategories_nodes>
      get serializer =>
          _$gGetRepositoryDataRepositoryDiscussionCategoriesNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRepositoryData_repository_discussionCategories_nodes.serializer,
      this) as Map<String, dynamic>);
  static GGetRepositoryData_repository_discussionCategories_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRepositoryData_repository_discussionCategories_nodes.serializer,
          json);
}
