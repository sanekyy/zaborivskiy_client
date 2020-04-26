// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_page_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeneratePageState extends GeneratePageState {
  @override
  final String imageUrl;
  @override
  final bool enabled;
  @override
  final String predictedType;

  factory _$GeneratePageState(
          [void Function(GeneratePageStateBuilder) updates]) =>
      (new GeneratePageStateBuilder()..update(updates)).build();

  _$GeneratePageState._({this.imageUrl, this.enabled, this.predictedType})
      : super._() {
    if (enabled == null) {
      throw new BuiltValueNullFieldError('GeneratePageState', 'enabled');
    }
  }

  @override
  GeneratePageState rebuild(void Function(GeneratePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneratePageStateBuilder toBuilder() =>
      new GeneratePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneratePageState &&
        imageUrl == other.imageUrl &&
        enabled == other.enabled &&
        predictedType == other.predictedType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, imageUrl.hashCode), enabled.hashCode),
        predictedType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeneratePageState')
          ..add('imageUrl', imageUrl)
          ..add('enabled', enabled)
          ..add('predictedType', predictedType))
        .toString();
  }
}

class GeneratePageStateBuilder
    implements Builder<GeneratePageState, GeneratePageStateBuilder> {
  _$GeneratePageState _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  String _predictedType;
  String get predictedType => _$this._predictedType;
  set predictedType(String predictedType) =>
      _$this._predictedType = predictedType;

  GeneratePageStateBuilder();

  GeneratePageStateBuilder get _$this {
    if (_$v != null) {
      _imageUrl = _$v.imageUrl;
      _enabled = _$v.enabled;
      _predictedType = _$v.predictedType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneratePageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeneratePageState;
  }

  @override
  void update(void Function(GeneratePageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeneratePageState build() {
    final _$result = _$v ??
        new _$GeneratePageState._(
            imageUrl: imageUrl, enabled: enabled, predictedType: predictedType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
