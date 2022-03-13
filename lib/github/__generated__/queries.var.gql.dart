// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:autothreader_bot/github/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.var.gql.g.dart';

abstract class GCreateDiscussionVars
    implements Built<GCreateDiscussionVars, GCreateDiscussionVarsBuilder> {
  GCreateDiscussionVars._();

  factory GCreateDiscussionVars(
          [Function(GCreateDiscussionVarsBuilder b) updates]) =
      _$GCreateDiscussionVars;

  String get repositoryId;
  String get categoryId;
  String get title;
  String get body;
  String? get clientMutationId;
  static Serializer<GCreateDiscussionVars> get serializer =>
      _$gCreateDiscussionVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateDiscussionVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateDiscussionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateDiscussionVars.serializer, json);
}

abstract class GLockDiscussionVars
    implements Built<GLockDiscussionVars, GLockDiscussionVarsBuilder> {
  GLockDiscussionVars._();

  factory GLockDiscussionVars(
      [Function(GLockDiscussionVarsBuilder b) updates]) = _$GLockDiscussionVars;

  String get discussionId;
  String? get clientMutationId;
  static Serializer<GLockDiscussionVars> get serializer =>
      _$gLockDiscussionVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLockDiscussionVars.serializer, this)
          as Map<String, dynamic>);
  static GLockDiscussionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLockDiscussionVars.serializer, json);
}

abstract class GAddDiscussionCommentVars
    implements
        Built<GAddDiscussionCommentVars, GAddDiscussionCommentVarsBuilder> {
  GAddDiscussionCommentVars._();

  factory GAddDiscussionCommentVars(
          [Function(GAddDiscussionCommentVarsBuilder b) updates]) =
      _$GAddDiscussionCommentVars;

  String get discussionId;
  String get body;
  String? get clientMutationId;
  String? get replyToId;
  static Serializer<GAddDiscussionCommentVars> get serializer =>
      _$gAddDiscussionCommentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddDiscussionCommentVars.serializer, this)
          as Map<String, dynamic>);
  static GAddDiscussionCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAddDiscussionCommentVars.serializer, json);
}

abstract class GResolveDiscussionVars
    implements Built<GResolveDiscussionVars, GResolveDiscussionVarsBuilder> {
  GResolveDiscussionVars._();

  factory GResolveDiscussionVars(
          [Function(GResolveDiscussionVarsBuilder b) updates]) =
      _$GResolveDiscussionVars;

  String get commentId;
  String? get clientMutationId;
  static Serializer<GResolveDiscussionVars> get serializer =>
      _$gResolveDiscussionVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GResolveDiscussionVars.serializer, this)
          as Map<String, dynamic>);
  static GResolveDiscussionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GResolveDiscussionVars.serializer, json);
}

abstract class GDeleteDiscussionVars
    implements Built<GDeleteDiscussionVars, GDeleteDiscussionVarsBuilder> {
  GDeleteDiscussionVars._();

  factory GDeleteDiscussionVars(
          [Function(GDeleteDiscussionVarsBuilder b) updates]) =
      _$GDeleteDiscussionVars;

  String get discussionId;
  String? get clientMutationId;
  static Serializer<GDeleteDiscussionVars> get serializer =>
      _$gDeleteDiscussionVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteDiscussionVars.serializer, this)
          as Map<String, dynamic>);
  static GDeleteDiscussionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteDiscussionVars.serializer, json);
}

abstract class GGetRepositoryVars
    implements Built<GGetRepositoryVars, GGetRepositoryVarsBuilder> {
  GGetRepositoryVars._();

  factory GGetRepositoryVars([Function(GGetRepositoryVarsBuilder b) updates]) =
      _$GGetRepositoryVars;

  String get owner;
  String get name;
  static Serializer<GGetRepositoryVars> get serializer =>
      _$gGetRepositoryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRepositoryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetRepositoryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRepositoryVars.serializer, json);
}
