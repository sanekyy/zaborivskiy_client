import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:client/data/model/server/approximate_response.dart';
import 'package:client/data/model/server/tessellate_request.dart';
import 'package:client/data/model/server/tessellate_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ApproximateResponse,
  TessellateResponse,
  TessellateRequest,
  BuiltList,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
        const FullType(BuiltList, const [const FullType(int)]),
        () => ListBuilder<int>(),
      ))
    .build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));

dynamic serialize<T>(T value) =>
    serializers.serializeWith(serializers.serializerForType(T), value);

dynamic serializeIterable<T>(Iterable<T> value) =>
    value.map((value) => serialize<T>(value)).toList();
