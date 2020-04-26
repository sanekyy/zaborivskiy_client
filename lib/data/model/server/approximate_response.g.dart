// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approximate_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApproximateResponse> _$approximateResponseSerializer =
    new _$ApproximateResponseSerializer();

class _$ApproximateResponseSerializer
    implements StructuredSerializer<ApproximateResponse> {
  @override
  final Iterable<Type> types = const [
    ApproximateResponse,
    _$ApproximateResponse
  ];
  @override
  final String wireName = 'ApproximateResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ApproximateResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(int)])
          ])),
      'area',
      serializers.serialize(object.area, specifiedType: const FullType(double)),
      'perimeter',
      serializers.serialize(object.perimeter,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  ApproximateResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApproximateResponseBuilder();

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
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(int)])
              ])) as BuiltList<Object>);
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'perimeter':
          result.perimeter = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ApproximateResponse extends ApproximateResponse {
  @override
  final String imageUrl;
  @override
  final BuiltList<BuiltList<int>> coordinates;
  @override
  final double area;
  @override
  final double perimeter;

  factory _$ApproximateResponse(
          [void Function(ApproximateResponseBuilder) updates]) =>
      (new ApproximateResponseBuilder()..update(updates)).build();

  _$ApproximateResponse._(
      {this.imageUrl, this.coordinates, this.area, this.perimeter})
      : super._() {
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('ApproximateResponse', 'imageUrl');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('ApproximateResponse', 'coordinates');
    }
    if (area == null) {
      throw new BuiltValueNullFieldError('ApproximateResponse', 'area');
    }
    if (perimeter == null) {
      throw new BuiltValueNullFieldError('ApproximateResponse', 'perimeter');
    }
  }

  @override
  ApproximateResponse rebuild(
          void Function(ApproximateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApproximateResponseBuilder toBuilder() =>
      new ApproximateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApproximateResponse &&
        imageUrl == other.imageUrl &&
        coordinates == other.coordinates &&
        area == other.area &&
        perimeter == other.perimeter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, imageUrl.hashCode), coordinates.hashCode),
            area.hashCode),
        perimeter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApproximateResponse')
          ..add('imageUrl', imageUrl)
          ..add('coordinates', coordinates)
          ..add('area', area)
          ..add('perimeter', perimeter))
        .toString();
  }
}

class ApproximateResponseBuilder
    implements Builder<ApproximateResponse, ApproximateResponseBuilder> {
  _$ApproximateResponse _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  ListBuilder<BuiltList<int>> _coordinates;
  ListBuilder<BuiltList<int>> get coordinates =>
      _$this._coordinates ??= new ListBuilder<BuiltList<int>>();
  set coordinates(ListBuilder<BuiltList<int>> coordinates) =>
      _$this._coordinates = coordinates;

  double _area;
  double get area => _$this._area;
  set area(double area) => _$this._area = area;

  double _perimeter;
  double get perimeter => _$this._perimeter;
  set perimeter(double perimeter) => _$this._perimeter = perimeter;

  ApproximateResponseBuilder();

  ApproximateResponseBuilder get _$this {
    if (_$v != null) {
      _imageUrl = _$v.imageUrl;
      _coordinates = _$v.coordinates?.toBuilder();
      _area = _$v.area;
      _perimeter = _$v.perimeter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApproximateResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApproximateResponse;
  }

  @override
  void update(void Function(ApproximateResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApproximateResponse build() {
    _$ApproximateResponse _$result;
    try {
      _$result = _$v ??
          new _$ApproximateResponse._(
              imageUrl: imageUrl,
              coordinates: coordinates.build(),
              area: area,
              perimeter: perimeter);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApproximateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
