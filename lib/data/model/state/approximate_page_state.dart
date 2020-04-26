import 'package:built_value/built_value.dart';

part 'approximate_page_state.g.dart';

abstract class ApproximatePageState
    implements Built<ApproximatePageState, ApproximatePageStateBuilder> {

  @nullable
  String get imageUrl;

  @nullable
  double get square;

  @nullable
  double get perimeter;

  ApproximatePageState._();

  factory ApproximatePageState([void Function(ApproximatePageStateBuilder) updates]) =
      _$ApproximatePageState;
}
