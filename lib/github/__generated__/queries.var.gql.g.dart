// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateDiscussionVars> _$gCreateDiscussionVarsSerializer =
    new _$GCreateDiscussionVarsSerializer();
Serializer<GLockDiscussionVars> _$gLockDiscussionVarsSerializer =
    new _$GLockDiscussionVarsSerializer();
Serializer<GAddDiscussionCommentVars> _$gAddDiscussionCommentVarsSerializer =
    new _$GAddDiscussionCommentVarsSerializer();
Serializer<GResolveDiscussionVars> _$gResolveDiscussionVarsSerializer =
    new _$GResolveDiscussionVarsSerializer();
Serializer<GDeleteDiscussionVars> _$gDeleteDiscussionVarsSerializer =
    new _$GDeleteDiscussionVarsSerializer();
Serializer<GGetRepositoryVars> _$gGetRepositoryVarsSerializer =
    new _$GGetRepositoryVarsSerializer();

class _$GCreateDiscussionVarsSerializer
    implements StructuredSerializer<GCreateDiscussionVars> {
  @override
  final Iterable<Type> types = const [
    GCreateDiscussionVars,
    _$GCreateDiscussionVars
  ];
  @override
  final String wireName = 'GCreateDiscussionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDiscussionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'repositoryId',
      serializers.serialize(object.repositoryId,
          specifiedType: const FullType(String)),
      'categoryId',
      serializers.serialize(object.categoryId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateDiscussionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDiscussionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'repositoryId':
          result.repositoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLockDiscussionVarsSerializer
    implements StructuredSerializer<GLockDiscussionVars> {
  @override
  final Iterable<Type> types = const [
    GLockDiscussionVars,
    _$GLockDiscussionVars
  ];
  @override
  final String wireName = 'GLockDiscussionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLockDiscussionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'discussionId',
      serializers.serialize(object.discussionId,
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
    return result;
  }

  @override
  GLockDiscussionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLockDiscussionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'discussionId':
          result.discussionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddDiscussionCommentVarsSerializer
    implements StructuredSerializer<GAddDiscussionCommentVars> {
  @override
  final Iterable<Type> types = const [
    GAddDiscussionCommentVars,
    _$GAddDiscussionCommentVars
  ];
  @override
  final String wireName = 'GAddDiscussionCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddDiscussionCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'discussionId',
      serializers.serialize(object.discussionId,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.clientMutationId;
    if (value != null) {
      result
        ..add('clientMutationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyToId;
    if (value != null) {
      result
        ..add('replyToId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddDiscussionCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddDiscussionCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'discussionId':
          result.discussionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyToId':
          result.replyToId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GResolveDiscussionVarsSerializer
    implements StructuredSerializer<GResolveDiscussionVars> {
  @override
  final Iterable<Type> types = const [
    GResolveDiscussionVars,
    _$GResolveDiscussionVars
  ];
  @override
  final String wireName = 'GResolveDiscussionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GResolveDiscussionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'commentId',
      serializers.serialize(object.commentId,
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
    return result;
  }

  @override
  GResolveDiscussionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GResolveDiscussionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteDiscussionVarsSerializer
    implements StructuredSerializer<GDeleteDiscussionVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteDiscussionVars,
    _$GDeleteDiscussionVars
  ];
  @override
  final String wireName = 'GDeleteDiscussionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteDiscussionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'discussionId',
      serializers.serialize(object.discussionId,
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
    return result;
  }

  @override
  GDeleteDiscussionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteDiscussionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'discussionId':
          result.discussionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clientMutationId':
          result.clientMutationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositoryVarsSerializer
    implements StructuredSerializer<GGetRepositoryVars> {
  @override
  final Iterable<Type> types = const [GGetRepositoryVars, _$GGetRepositoryVars];
  @override
  final String wireName = 'GGetRepositoryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRepositoryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRepositoryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRepositoryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
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

class _$GCreateDiscussionVars extends GCreateDiscussionVars {
  @override
  final String repositoryId;
  @override
  final String categoryId;
  @override
  final String title;
  @override
  final String body;
  @override
  final String? clientMutationId;

  factory _$GCreateDiscussionVars(
          [void Function(GCreateDiscussionVarsBuilder)? updates]) =>
      (new GCreateDiscussionVarsBuilder()..update(updates)).build();

  _$GCreateDiscussionVars._(
      {required this.repositoryId,
      required this.categoryId,
      required this.title,
      required this.body,
      this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        repositoryId, 'GCreateDiscussionVars', 'repositoryId');
    BuiltValueNullFieldError.checkNotNull(
        categoryId, 'GCreateDiscussionVars', 'categoryId');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GCreateDiscussionVars', 'title');
    BuiltValueNullFieldError.checkNotNull(
        body, 'GCreateDiscussionVars', 'body');
  }

  @override
  GCreateDiscussionVars rebuild(
          void Function(GCreateDiscussionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDiscussionVarsBuilder toBuilder() =>
      new GCreateDiscussionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDiscussionVars &&
        repositoryId == other.repositoryId &&
        categoryId == other.categoryId &&
        title == other.title &&
        body == other.body &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, repositoryId.hashCode), categoryId.hashCode),
                title.hashCode),
            body.hashCode),
        clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateDiscussionVars')
          ..add('repositoryId', repositoryId)
          ..add('categoryId', categoryId)
          ..add('title', title)
          ..add('body', body)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GCreateDiscussionVarsBuilder
    implements Builder<GCreateDiscussionVars, GCreateDiscussionVarsBuilder> {
  _$GCreateDiscussionVars? _$v;

  String? _repositoryId;
  String? get repositoryId => _$this._repositoryId;
  set repositoryId(String? repositoryId) => _$this._repositoryId = repositoryId;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GCreateDiscussionVarsBuilder();

  GCreateDiscussionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _repositoryId = $v.repositoryId;
      _categoryId = $v.categoryId;
      _title = $v.title;
      _body = $v.body;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDiscussionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDiscussionVars;
  }

  @override
  void update(void Function(GCreateDiscussionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDiscussionVars build() {
    final _$result = _$v ??
        new _$GCreateDiscussionVars._(
            repositoryId: BuiltValueNullFieldError.checkNotNull(
                repositoryId, 'GCreateDiscussionVars', 'repositoryId'),
            categoryId: BuiltValueNullFieldError.checkNotNull(
                categoryId, 'GCreateDiscussionVars', 'categoryId'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GCreateDiscussionVars', 'title'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, 'GCreateDiscussionVars', 'body'),
            clientMutationId: clientMutationId);
    replace(_$result);
    return _$result;
  }
}

class _$GLockDiscussionVars extends GLockDiscussionVars {
  @override
  final String discussionId;
  @override
  final String? clientMutationId;

  factory _$GLockDiscussionVars(
          [void Function(GLockDiscussionVarsBuilder)? updates]) =>
      (new GLockDiscussionVarsBuilder()..update(updates)).build();

  _$GLockDiscussionVars._({required this.discussionId, this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        discussionId, 'GLockDiscussionVars', 'discussionId');
  }

  @override
  GLockDiscussionVars rebuild(
          void Function(GLockDiscussionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLockDiscussionVarsBuilder toBuilder() =>
      new GLockDiscussionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLockDiscussionVars &&
        discussionId == other.discussionId &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, discussionId.hashCode), clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLockDiscussionVars')
          ..add('discussionId', discussionId)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GLockDiscussionVarsBuilder
    implements Builder<GLockDiscussionVars, GLockDiscussionVarsBuilder> {
  _$GLockDiscussionVars? _$v;

  String? _discussionId;
  String? get discussionId => _$this._discussionId;
  set discussionId(String? discussionId) => _$this._discussionId = discussionId;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GLockDiscussionVarsBuilder();

  GLockDiscussionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _discussionId = $v.discussionId;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLockDiscussionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLockDiscussionVars;
  }

  @override
  void update(void Function(GLockDiscussionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLockDiscussionVars build() {
    final _$result = _$v ??
        new _$GLockDiscussionVars._(
            discussionId: BuiltValueNullFieldError.checkNotNull(
                discussionId, 'GLockDiscussionVars', 'discussionId'),
            clientMutationId: clientMutationId);
    replace(_$result);
    return _$result;
  }
}

class _$GAddDiscussionCommentVars extends GAddDiscussionCommentVars {
  @override
  final String discussionId;
  @override
  final String body;
  @override
  final String? clientMutationId;
  @override
  final String? replyToId;

  factory _$GAddDiscussionCommentVars(
          [void Function(GAddDiscussionCommentVarsBuilder)? updates]) =>
      (new GAddDiscussionCommentVarsBuilder()..update(updates)).build();

  _$GAddDiscussionCommentVars._(
      {required this.discussionId,
      required this.body,
      this.clientMutationId,
      this.replyToId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        discussionId, 'GAddDiscussionCommentVars', 'discussionId');
    BuiltValueNullFieldError.checkNotNull(
        body, 'GAddDiscussionCommentVars', 'body');
  }

  @override
  GAddDiscussionCommentVars rebuild(
          void Function(GAddDiscussionCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddDiscussionCommentVarsBuilder toBuilder() =>
      new GAddDiscussionCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddDiscussionCommentVars &&
        discussionId == other.discussionId &&
        body == other.body &&
        clientMutationId == other.clientMutationId &&
        replyToId == other.replyToId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, discussionId.hashCode), body.hashCode),
            clientMutationId.hashCode),
        replyToId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddDiscussionCommentVars')
          ..add('discussionId', discussionId)
          ..add('body', body)
          ..add('clientMutationId', clientMutationId)
          ..add('replyToId', replyToId))
        .toString();
  }
}

class GAddDiscussionCommentVarsBuilder
    implements
        Builder<GAddDiscussionCommentVars, GAddDiscussionCommentVarsBuilder> {
  _$GAddDiscussionCommentVars? _$v;

  String? _discussionId;
  String? get discussionId => _$this._discussionId;
  set discussionId(String? discussionId) => _$this._discussionId = discussionId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  String? _replyToId;
  String? get replyToId => _$this._replyToId;
  set replyToId(String? replyToId) => _$this._replyToId = replyToId;

  GAddDiscussionCommentVarsBuilder();

  GAddDiscussionCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _discussionId = $v.discussionId;
      _body = $v.body;
      _clientMutationId = $v.clientMutationId;
      _replyToId = $v.replyToId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddDiscussionCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddDiscussionCommentVars;
  }

  @override
  void update(void Function(GAddDiscussionCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddDiscussionCommentVars build() {
    final _$result = _$v ??
        new _$GAddDiscussionCommentVars._(
            discussionId: BuiltValueNullFieldError.checkNotNull(
                discussionId, 'GAddDiscussionCommentVars', 'discussionId'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, 'GAddDiscussionCommentVars', 'body'),
            clientMutationId: clientMutationId,
            replyToId: replyToId);
    replace(_$result);
    return _$result;
  }
}

class _$GResolveDiscussionVars extends GResolveDiscussionVars {
  @override
  final String commentId;
  @override
  final String? clientMutationId;

  factory _$GResolveDiscussionVars(
          [void Function(GResolveDiscussionVarsBuilder)? updates]) =>
      (new GResolveDiscussionVarsBuilder()..update(updates)).build();

  _$GResolveDiscussionVars._({required this.commentId, this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        commentId, 'GResolveDiscussionVars', 'commentId');
  }

  @override
  GResolveDiscussionVars rebuild(
          void Function(GResolveDiscussionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResolveDiscussionVarsBuilder toBuilder() =>
      new GResolveDiscussionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResolveDiscussionVars &&
        commentId == other.commentId &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, commentId.hashCode), clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GResolveDiscussionVars')
          ..add('commentId', commentId)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GResolveDiscussionVarsBuilder
    implements Builder<GResolveDiscussionVars, GResolveDiscussionVarsBuilder> {
  _$GResolveDiscussionVars? _$v;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GResolveDiscussionVarsBuilder();

  GResolveDiscussionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentId = $v.commentId;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResolveDiscussionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GResolveDiscussionVars;
  }

  @override
  void update(void Function(GResolveDiscussionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GResolveDiscussionVars build() {
    final _$result = _$v ??
        new _$GResolveDiscussionVars._(
            commentId: BuiltValueNullFieldError.checkNotNull(
                commentId, 'GResolveDiscussionVars', 'commentId'),
            clientMutationId: clientMutationId);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteDiscussionVars extends GDeleteDiscussionVars {
  @override
  final String discussionId;
  @override
  final String? clientMutationId;

  factory _$GDeleteDiscussionVars(
          [void Function(GDeleteDiscussionVarsBuilder)? updates]) =>
      (new GDeleteDiscussionVarsBuilder()..update(updates)).build();

  _$GDeleteDiscussionVars._({required this.discussionId, this.clientMutationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        discussionId, 'GDeleteDiscussionVars', 'discussionId');
  }

  @override
  GDeleteDiscussionVars rebuild(
          void Function(GDeleteDiscussionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteDiscussionVarsBuilder toBuilder() =>
      new GDeleteDiscussionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteDiscussionVars &&
        discussionId == other.discussionId &&
        clientMutationId == other.clientMutationId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, discussionId.hashCode), clientMutationId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteDiscussionVars')
          ..add('discussionId', discussionId)
          ..add('clientMutationId', clientMutationId))
        .toString();
  }
}

class GDeleteDiscussionVarsBuilder
    implements Builder<GDeleteDiscussionVars, GDeleteDiscussionVarsBuilder> {
  _$GDeleteDiscussionVars? _$v;

  String? _discussionId;
  String? get discussionId => _$this._discussionId;
  set discussionId(String? discussionId) => _$this._discussionId = discussionId;

  String? _clientMutationId;
  String? get clientMutationId => _$this._clientMutationId;
  set clientMutationId(String? clientMutationId) =>
      _$this._clientMutationId = clientMutationId;

  GDeleteDiscussionVarsBuilder();

  GDeleteDiscussionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _discussionId = $v.discussionId;
      _clientMutationId = $v.clientMutationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteDiscussionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteDiscussionVars;
  }

  @override
  void update(void Function(GDeleteDiscussionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteDiscussionVars build() {
    final _$result = _$v ??
        new _$GDeleteDiscussionVars._(
            discussionId: BuiltValueNullFieldError.checkNotNull(
                discussionId, 'GDeleteDiscussionVars', 'discussionId'),
            clientMutationId: clientMutationId);
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepositoryVars extends GGetRepositoryVars {
  @override
  final String owner;
  @override
  final String name;

  factory _$GGetRepositoryVars(
          [void Function(GGetRepositoryVarsBuilder)? updates]) =>
      (new GGetRepositoryVarsBuilder()..update(updates)).build();

  _$GGetRepositoryVars._({required this.owner, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(owner, 'GGetRepositoryVars', 'owner');
    BuiltValueNullFieldError.checkNotNull(name, 'GGetRepositoryVars', 'name');
  }

  @override
  GGetRepositoryVars rebuild(
          void Function(GGetRepositoryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryVarsBuilder toBuilder() =>
      new GGetRepositoryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepositoryVars &&
        owner == other.owner &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, owner.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRepositoryVars')
          ..add('owner', owner)
          ..add('name', name))
        .toString();
  }
}

class GGetRepositoryVarsBuilder
    implements Builder<GGetRepositoryVars, GGetRepositoryVarsBuilder> {
  _$GGetRepositoryVars? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRepositoryVarsBuilder();

  GGetRepositoryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepositoryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepositoryVars;
  }

  @override
  void update(void Function(GGetRepositoryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepositoryVars build() {
    final _$result = _$v ??
        new _$GGetRepositoryVars._(
            owner: BuiltValueNullFieldError.checkNotNull(
                owner, 'GGetRepositoryVars', 'owner'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetRepositoryVars', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
