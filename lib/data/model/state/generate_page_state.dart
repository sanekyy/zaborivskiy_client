import 'package:built_value/built_value.dart';

part 'generate_page_state.g.dart';

abstract class GeneratePageState
    implements Built<GeneratePageState, GeneratePageStateBuilder> {

  @nullable
  String get imageUrl;

  bool get enabled;

  @nullable
  String get predictedType;

  GeneratePageState._();

  factory GeneratePageState([void Function(GeneratePageStateBuilder) updates]) =
      _$GeneratePageState;
}
