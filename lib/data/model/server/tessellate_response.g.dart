// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tessellate_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TessellateResponse> _$tessellateResponseSerializer =
    new _$TessellateResponseSerializer();

class _$TessellateResponseSerializer
    implements StructuredSerializer<TessellateResponse> {
  @override
  final Iterable<Type> types = const [TessellateResponse, _$TessellateResponse];
  @override
  final String wireName = 'TessellateResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TessellateResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'figuresCount',
      serializers.serialize(object.figuresCount,
          specifiedType: const FullType(int)),
      'coverPercent',
      serializers.serialize(object.coverPercent,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  TessellateResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TessellateResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'figuresCount':
          result.figuresCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'coverPercent':
          result.coverPercent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TessellateResponse extends TessellateResponse {
  @override
  final String imageUrl;
  @override
  final int figuresCount;
  @override
  final double coverPercent;

  factory _$TessellateResponse(
          [void Function(TessellateResponseBuilder) updates]) =>
      (new TessellateResponseBuilder()..update(updates)).build();

  _$TessellateResponse._({this.imageUrl, this.figuresCount, this.coverPercent})
      : super._() {
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('TessellateResponse', 'imageUrl');
    }
    if (figuresCount == null) {
      throw new BuiltValueNullFieldError('TessellateResponse', 'figuresCount');
    }
    if (coverPercent == null) {
      throw new BuiltValueNullFieldError('TessellateResponse', 'coverPercent');
    }
  }

  @override
  TessellateResponse rebuild(
          void Function(TessellateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TessellateResponseBuilder toBuilder() =>
      new TessellateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TessellateResponse &&
        imageUrl == other.imageUrl &&
        figuresCount == other.figuresCount &&
        coverPercent == other.coverPercent;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, imageUrl.hashCode), figuresCount.hashCode),
        coverPercent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TessellateResponse')
          ..add('imageUrl', imageUrl)
          ..add('figuresCount', figuresCount)
          ..add('coverPercent', coverPercent))
        .toString();
  }
}

class TessellateResponseBuilder
    implements Builder<TessellateResponse, TessellateResponseBuilder> {
  _$TessellateResponse _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  int _figuresCount;
  int get figuresCount => _$this._figuresCount;
  set figuresCount(int figuresCount) => _$this._figuresCount = figuresCount;

  double _coverPercent;
  double get coverPercent => _$this._coverPercent;
  set coverPercent(double coverPercent) => _$this._coverPercent = coverPercent;

  TessellateResponseBuilder();

  TessellateResponseBuilder get _$this {
    if (_$v != null) {
      _imageUrl = _$v.imageUrl;
      _figuresCount = _$v.figuresCount;
      _coverPercent = _$v.coverPercent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TessellateResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TessellateResponse;
  }

  @override
  void update(void Function(TessellateResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TessellateResponse build() {
    final _$result = _$v ??
        new _$TessellateResponse._(
            imageUrl: imageUrl,
            figuresCount: figuresCount,
            coverPercent: coverPercent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
