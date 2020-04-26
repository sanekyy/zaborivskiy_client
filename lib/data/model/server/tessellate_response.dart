import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tessellate_response.g.dart';

abstract class TessellateResponse
    implements Built<TessellateResponse, TessellateResponseBuilder> {
  static Serializer<TessellateResponse> get serializer =>
      _$tessellateResponseSerializer;

  String get imageUrl;

  int get figuresCount;

  double get coverPercent;

  TessellateResponse._();

  factory TessellateResponse(
          [void Function(TessellateResponseBuilder) updates]) =
      _$TessellateResponse;
}
