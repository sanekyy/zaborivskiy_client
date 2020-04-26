import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'approximate_response.g.dart';

abstract class ApproximateResponse
    implements Built<ApproximateResponse, ApproximateResponseBuilder> {
  static Serializer<ApproximateResponse> get serializer =>
      _$approximateResponseSerializer;

  String get imageUrl;

  BuiltList<BuiltList<int>> get coordinates;

  double get area;

  double get perimeter;

  ApproximateResponse._();

  factory ApproximateResponse(
          [void Function(ApproximateResponseBuilder) updates]) =
      _$ApproximateResponse;
}
