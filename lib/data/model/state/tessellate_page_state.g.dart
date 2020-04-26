// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tessellate_page_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TessellatePageState extends TessellatePageState {
  @override
  final String imageUrl;
  @override
  final int figuresCount;
  @override
  final double coverPercent;

  factory _$TessellatePageState(
          [void Function(TessellatePageStateBuilder) updates]) =>
      (new TessellatePageStateBuilder()..update(updates)).build();

  _$TessellatePageState._({this.imageUrl, this.figuresCount, this.coverPercent})
      : super._();

  @override
  TessellatePageState rebuild(
          void Function(TessellatePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TessellatePageStateBuilder toBuilder() =>
      new TessellatePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TessellatePageState &&
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
    return (newBuiltValueToStringHelper('TessellatePageState')
          ..add('imageUrl', imageUrl)
          ..add('figuresCount', figuresCount)
          ..add('coverPercent', coverPercent))
        .toString();
  }
}

class TessellatePageStateBuilder
    implements Builder<TessellatePageState, TessellatePageStateBuilder> {
  _$TessellatePageState _$v;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  int _figuresCount;
  int get figuresCount => _$this._figuresCount;
  set figuresCount(int figuresCount) => _$this._figuresCount = figuresCount;

  double _coverPercent;
  double get coverPercent => _$this._coverPercent;
  set coverPercent(double coverPercent) => _$this._coverPercent = coverPercent;

  TessellatePageStateBuilder();

  TessellatePageStateBuilder get _$this {
    if (_$v != null) {
      _imageUrl = _$v.imageUrl;
      _figuresCount = _$v.figuresCount;
      _coverPercent = _$v.coverPercent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TessellatePageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TessellatePageState;
  }

  @override
  void update(void Function(TessellatePageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TessellatePageState build() {
    final _$result = _$v ??
        new _$TessellatePageState._(
            imageUrl: imageUrl,
            figuresCount: figuresCount,
            coverPercent: coverPercent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
