// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:autothreader_bot/github/__generated__/queries.ast.gql.dart'
    as _i2;
import 'package:autothreader_bot/github/__generated__/queries.var.gql.dart'
    as _i3;
import 'package:autothreader_bot/github/__generated__/serializers.gql.dart'
    as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_exec/gql_exec.dart' as _i1;

part 'queries.req.gql.g.dart';

abstract class GCreateDiscussion
    implements Built<GCreateDiscussion, GCreateDiscussionBuilder> {
  GCreateDiscussion._();

  factory GCreateDiscussion([Function(GCreateDiscussionBuilder b) updates]) =
      _$GCreateDiscussion;

  static void _initializeBuilder(GCreateDiscussionBuilder b) => b
    ..operation = _i1.Operation(
        document: _i2.document, operationName: 'CreateDiscussion');
  _i3.GCreateDiscussionVars get vars;
  _i1.Operation get operation;
  static Serializer<GCreateDiscussion> get serializer =>
      _$gCreateDiscussionSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GCreateDiscussion.serializer, this)
          as Map<String, dynamic>);
  static GCreateDiscussion? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GCreateDiscussion.serializer, json);
}

abstract class GLockDiscussion
    implements Built<GLockDiscussion, GLockDiscussionBuilder> {
  GLockDiscussion._();

  factory GLockDiscussion([Function(GLockDiscussionBuilder b) updates]) =
      _$GLockDiscussion;

  static void _initializeBuilder(GLockDiscussionBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'LockDiscussion');
  _i3.GLockDiscussionVars get vars;
  _i1.Operation get operation;
  static Serializer<GLockDiscussion> get serializer =>
      _$gLockDiscussionSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GLockDiscussion.serializer, this)
          as Map<String, dynamic>);
  static GLockDiscussion? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GLockDiscussion.serializer, json);
}

abstract class GAddDiscussionComment
    implements Built<GAddDiscussionComment, GAddDiscussionCommentBuilder> {
  GAddDiscussionComment._();

  factory GAddDiscussionComment(
          [Function(GAddDiscussionCommentBuilder b) updates]) =
      _$GAddDiscussionComment;

  static void _initializeBuilder(GAddDiscussionCommentBuilder b) => b
    ..operation = _i1.Operation(
        document: _i2.document, operationName: 'AddDiscussionComment');
  _i3.GAddDiscussionCommentVars get vars;
  _i1.Operation get operation;
  static Serializer<GAddDiscussionComment> get serializer =>
      _$gAddDiscussionCommentSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GAddDiscussionComment.serializer, this)
          as Map<String, dynamic>);
  static GAddDiscussionComment? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GAddDiscussionComment.serializer, json);
}

abstract class GGetRepository
    implements Built<GGetRepository, GGetRepositoryBuilder> {
  GGetRepository._();

  factory GGetRepository([Function(GGetRepositoryBuilder b) updates]) =
      _$GGetRepository;

  static void _initializeBuilder(GGetRepositoryBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'GetRepository');
  _i3.GGetRepositoryVars get vars;
  _i1.Operation get operation;
  static Serializer<GGetRepository> get serializer =>
      _$gGetRepositorySerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GGetRepository.serializer, this)
          as Map<String, dynamic>);
  static GGetRepository? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GGetRepository.serializer, json);
}
