// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tessellate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TessellateRequest> _$tessellateRequestSerializer =
    new _$TessellateRequestSerializer();

class _$TessellateRequestSerializer
    implements StructuredSerializer<TessellateRequest> {
  @override
  final Iterable<Type> types = const [TessellateRequest, _$TessellateRequest];
  @override
  final String wireName = 'TessellateRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, TessellateRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'polygonVertices',
      serializers.serialize(object.polygonVertices,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(int)])
          ])),
      'figureVertices',
      serializers.serialize(object.figureVertices,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(int)])
          ])),
    ];

    return result;
  }

  @override
  TessellateRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TessellateRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'polygonVertices':
          result.polygonVertices.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(int)])
              ])) as BuiltList<Object>);
          break;
        case 'figureVertices':
          result.figureVertices.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(int)])
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TessellateRequest extends TessellateRequest {
  @override
  final BuiltList<BuiltList<int>> polygonVertices;
  @override
  final BuiltList<BuiltList<int>> figureVertices;

  factory _$TessellateRequest(
          [void Function(TessellateRequestBuilder) updates]) =>
      (new TessellateRequestBuilder()..update(updates)).build();

  _$TessellateRequest._({this.polygonVertices, this.figureVertices})
      : super._() {
    if (polygonVertices == null) {
      throw new BuiltValueNullFieldError(
          'TessellateRequest', 'polygonVertices');
    }
    if (figureVertices == null) {
      throw new BuiltValueNullFieldError('TessellateRequest', 'figureVertices');
    }
  }

  @override
  TessellateRequest rebuild(void Function(TessellateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TessellateRequestBuilder toBuilder() =>
      new TessellateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TessellateRequest &&
        polygonVertices == other.polygonVertices &&
        figureVertices == other.figureVertices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, polygonVertices.hashCode), figureVertices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TessellateRequest')
          ..add('polygonVertices', polygonVertices)
          ..add('figureVertices', figureVertices))
        .toString();
  }
}

class TessellateRequestBuilder
    implements Builder<TessellateRequest, TessellateRequestBuilder> {
  _$TessellateRequest _$v;

  ListBuilder<BuiltList<int>> _polygonVertices;
  ListBuilder<BuiltList<int>> get polygonVertices =>
      _$this._polygonVertices ??= new ListBuilder<BuiltList<int>>();
  set polygonVertices(ListBuilder<BuiltList<int>> polygonVertices) =>
      _$this._polygonVertices = polygonVertices;

  ListBuilder<BuiltList<int>> _figureVertices;
  ListBuilder<BuiltList<int>> get figureVertices =>
      _$this._figureVertices ??= new ListBuilder<BuiltList<int>>();
  set figureVertices(ListBuilder<BuiltList<int>> figureVertices) =>
      _$this._figureVertices = figureVertices;

  TessellateRequestBuilder();

  TessellateRequestBuilder get _$this {
    if (_$v != null) {
      _polygonVertices = _$v.polygonVertices?.toBuilder();
      _figureVertices = _$v.figureVertices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TessellateRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TessellateRequest;
  }

  @override
  void update(void Function(TessellateRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TessellateRequest build() {
    _$TessellateRequest _$result;
    try {
      _$result = _$v ??
          new _$TessellateRequest._(
              polygonVertices: polygonVertices.build(),
              figureVertices: figureVertices.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'polygonVertices';
        polygonVertices.build();
        _$failedField = 'figureVertices';
        figureVertices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TessellateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
