import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tessellate_request.g.dart';

abstract class TessellateRequest
    implements Built<TessellateRequest, TessellateRequestBuilder> {
  static Serializer<TessellateRequest> get serializer =>
      _$tessellateRequestSerializer;

  BuiltList<BuiltList<int>> get polygonVertices;

  BuiltList<BuiltList<int>> get figureVertices;

  TessellateRequest._();

  factory TessellateRequest([void Function(TessellateRequestBuilder) updates]) =
      _$TessellateRequest;
}
