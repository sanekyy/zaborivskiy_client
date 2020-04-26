// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approximate_page_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApproximatePageState extends ApproximatePageState {
  @override
  final String imageUrl;
  @override
  final double square;
  @override
  final double perimeter;

  factory _$ApproximatePageState(
          [void Function(ApproximatePageStateBuilder) updates]) =>
      (new ApproximatePageStateBuilder()..update(updates)).build();

  _$ApproximatePageState._({this.imageUrl, this.square, this.perimeter})
      : super._();

  @override
  ApproximatePageState rebuild(
          void Function(ApproximatePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApproximatePageStateBuilder toBuilder() =>
      new ApproximatePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApproximatePageState &&
        imageUrl == other.imageUrl &&
        square == other.square &&
        perimeter == other.perimeter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, imageUrl.hashCode), square.hashCode), perimeter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApproximatePageState')
          ..add('imageUrl', imageUrl)
          ..add('square', square)
          ..add('perimeter', perimeter))
        .toString();
  }
}

class ApproximatePageStateBuilder
    implements Builder<ApproximatePageState, ApproximatePageStateBuilder> {
  _$ApproximatePageState _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  double _square;
  double get square => _$this._square;
  set square(double square) => _$this._square = square;

  double _perimeter;
  double get perimeter => _$this._perimeter;
  set perimeter(double perimeter) => _$this._perimeter = perimeter;

  ApproximatePageStateBuilder();

  ApproximatePageStateBuilder get _$this {
    if (_$v != null) {
      _imageUrl = _$v.imageUrl;
      _square = _$v.square;
      _perimeter = _$v.perimeter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApproximatePageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApproximatePageState;
  }

  @override
  void update(void Function(ApproximatePageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApproximatePageState build() {
    final _$result = _$v ??
        new _$ApproximatePageState._(
            imageUrl: imageUrl, square: square, perimeter: perimeter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
