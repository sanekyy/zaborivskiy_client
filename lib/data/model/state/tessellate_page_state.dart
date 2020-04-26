import 'package:built_value/built_value.dart';

part 'tessellate_page_state.g.dart';

abstract class TessellatePageState
    implements Built<TessellatePageState, TessellatePageStateBuilder> {

  @nullable
  String get imageUrl;

  @nullable
  int get figuresCount;

  @nullable
  double get coverPercent;

  TessellatePageState._();

  factory TessellatePageState([void Function(TessellatePageStateBuilder) updates]) =
      _$TessellatePageState;
}
