// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateDiscussion> _$gCreateDiscussionSerializer =
    new _$GCreateDiscussionSerializer();
Serializer<GLockDiscussion> _$gLockDiscussionSerializer =
    new _$GLockDiscussionSerializer();
Serializer<GAddDiscussionComment> _$gAddDiscussionCommentSerializer =
    new _$GAddDiscussionCommentSerializer();
Serializer<GGetRepository> _$gGetRepositorySerializer =
    new _$GGetRepositorySerializer();

class _$GCreateDiscussionSerializer
    implements StructuredSerializer<GCreateDiscussion> {
  @override
  final Iterable<Type> types = const [GCreateDiscussion, _$GCreateDiscussion];
  @override
  final String wireName = 'GCreateDiscussion';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateDiscussion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreateDiscussionVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GCreateDiscussion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDiscussionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GCreateDiscussionVars))!
              as _i3.GCreateDiscussionVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GLockDiscussionSerializer
    implements StructuredSerializer<GLockDiscussion> {
  @override
  final Iterable<Type> types = const [GLockDiscussion, _$GLockDiscussion];
  @override
  final String wireName = 'GLockDiscussion';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLockDiscussion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GLockDiscussionVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GLockDiscussion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLockDiscussionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GLockDiscussionVars))!
              as _i3.GLockDiscussionVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddDiscussionCommentSerializer
    implements StructuredSerializer<GAddDiscussionComment> {
  @override
  final Iterable<Type> types = const [
    GAddDiscussionComment,
    _$GAddDiscussionComment
  ];
  @override
  final String wireName = 'GAddDiscussionComment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddDiscussionComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAddDiscussionCommentVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GAddDiscussionComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddDiscussionCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAddDiscussionCommentVars))!
              as _i3.GAddDiscussionCommentVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRepositorySerializer
    implements StructuredSerializer<GGetRepository> {
  @override
  final Iterable<Type> types = const [GGetRepository, _$GGetRepository];
  @override
  final String wireName = 'GGetRepository';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRepository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetRepositoryVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GGetRepository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetRepositoryVars))!
              as _i3.GGetRepositoryVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDiscussion extends GCreateDiscussion {
  @override
  final _i3.GCreateDiscussionVars vars;
  @override
  final _i1.Operation operation;

  factory _$GCreateDiscussion(
          [void Function(GCreateDiscussionBuilder)? updates]) =>
      (new GCreateDiscussionBuilder()..update(updates)).build();

  _$GCreateDiscussion._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GCreateDiscussion', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GCreateDiscussion', 'operation');
  }

  @override
  GCreateDiscussion rebuild(void Function(GCreateDiscussionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDiscussionBuilder toBuilder() =>
      new GCreateDiscussionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDiscussion &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateDiscussion')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GCreateDiscussionBuilder
    implements Builder<GCreateDiscussion, GCreateDiscussionBuilder> {
  _$GCreateDiscussion? _$v;

  _i3.GCreateDiscussionVarsBuilder? _vars;
  _i3.GCreateDiscussionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateDiscussionVarsBuilder();
  set vars(_i3.GCreateDiscussionVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GCreateDiscussionBuilder() {
    GCreateDiscussion._initializeBuilder(this);
  }

  GCreateDiscussionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDiscussion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDiscussion;
  }

  @override
  void update(void Function(GCreateDiscussionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDiscussion build() {
    _$GCreateDiscussion _$result;
    try {
      _$result = _$v ??
          new _$GCreateDiscussion._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GCreateDiscussion', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateDiscussion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLockDiscussion extends GLockDiscussion {
  @override
  final _i3.GLockDiscussionVars vars;
  @override
  final _i1.Operation operation;

  factory _$GLockDiscussion([void Function(GLockDiscussionBuilder)? updates]) =>
      (new GLockDiscussionBuilder()..update(updates)).build();

  _$GLockDiscussion._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GLockDiscussion', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GLockDiscussion', 'operation');
  }

  @override
  GLockDiscussion rebuild(void Function(GLockDiscussionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLockDiscussionBuilder toBuilder() =>
      new GLockDiscussionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLockDiscussion &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLockDiscussion')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GLockDiscussionBuilder
    implements Builder<GLockDiscussion, GLockDiscussionBuilder> {
  _$GLockDiscussion? _$v;

  _i3.GLockDiscussionVarsBuilder? _vars;
  _i3.GLockDiscussionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GLockDiscussionVarsBuilder();
  set vars(_i3.GLockDiscussionVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GLockDiscussionBuilder() {
    GLockDiscussion._initializeBuilder(this);
  }

  GLockDiscussionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLockDiscussion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLockDiscussion;
  }

  @override
  void update(void Function(GLockDiscussionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLockDiscussion build() {
    _$GLockDiscussion _$result;
    try {
      _$result = _$v ??
          new _$GLockDiscussion._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GLockDiscussion', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLockDiscussion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddDiscussionComment extends GAddDiscussionComment {
  @override
  final _i3.GAddDiscussionCommentVars vars;
  @override
  final _i1.Operation operation;

  factory _$GAddDiscussionComment(
          [void Function(GAddDiscussionCommentBuilder)? updates]) =>
      (new GAddDiscussionCommentBuilder()..update(updates)).build();

  _$GAddDiscussionComment._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GAddDiscussionComment', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GAddDiscussionComment', 'operation');
  }

  @override
  GAddDiscussionComment rebuild(
          void Function(GAddDiscussionCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddDiscussionCommentBuilder toBuilder() =>
      new GAddDiscussionCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddDiscussionComment &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddDiscussionComment')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GAddDiscussionCommentBuilder
    implements Builder<GAddDiscussionComment, GAddDiscussionCommentBuilder> {
  _$GAddDiscussionComment? _$v;

  _i3.GAddDiscussionCommentVarsBuilder? _vars;
  _i3.GAddDiscussionCommentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAddDiscussionCommentVarsBuilder();
  set vars(_i3.GAddDiscussionCommentVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GAddDiscussionCommentBuilder() {
    GAddDiscussionComment._initializeBuilder(this);
  }

  GAddDiscussionCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddDiscussionComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddDiscussionComment;
  }

  @override
  void update(void Function(GAddDiscussionCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddDiscussionComment build() {
    _$GAddDiscussionComment _$result;
    try {
      _$result = _$v ??
          new _$GAddDiscussionComment._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GAddDiscussionComment', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddDiscussionComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRepository extends GGetRepository {
  @override
  final _i3.GGetRepositoryVars vars;
  @override
  final _i1.Operation operation;

  factory _$GGetRepository([void Function(GGetRepositoryBuilder)? updates]) =>
      (new GGetRepositoryBuilder()..update(updates)).build();

  _$GGetRepository._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GGetRepository', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGetRepository', 'operation');
  }

  @override
  GGetRepository rebuild(void Function(GGetRepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRepositoryBuilder toBuilder() =>
      new GGetRepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRepository &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRepository')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GGetRepositoryBuilder
    implements Builder<GGetRepository, GGetRepositoryBuilder> {
  _$GGetRepository? _$v;

  _i3.GGetRepositoryVarsBuilder? _vars;
  _i3.GGetRepositoryVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetRepositoryVarsBuilder();
  set vars(_i3.GGetRepositoryVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GGetRepositoryBuilder() {
    GGetRepository._initializeBuilder(this);
  }

  GGetRepositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRepository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRepository;
  }

  @override
  void update(void Function(GGetRepositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRepository build() {
    _$GGetRepository _$result;
    try {
      _$result = _$v ??
          new _$GGetRepository._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GGetRepository', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRepository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
