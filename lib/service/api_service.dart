import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:client/data/model/server/approximate_response.dart';
import 'package:client/data/model/server/serializers.dart';
import 'package:client/data/model/server/tessellate_request.dart';
import 'package:client/data/model/server/tessellate_response.dart';
import 'package:client/utils/log.dart';
import 'package:http/http.dart' as http;

const _tag = "api_service";

class ApiService {
  static final instance = ApiService();

  final String authority = "127.0.0.1:5000";

  final _client = http.Client();

  ApiService();

  Future<String> generateFigure(String id, int type) async {
    final uri = _buildUri("generateFigure", params: {
      "id": id,
      "type": "$type",
    });

    Log.d(_tag, "-> GET url = $uri");

    http.Response response;
    try {
      response = await _client.get(uri);
    } catch (e) {
      Log.e(_tag, "<- GET url = $uri, error = $e");
      throw e;
    }

    Log.d(_tag, "<- GET url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- GET url = $uri, headers = ${response.headers}");
    Log.d(_tag, "<- GET url = $uri, body = ${response.body}");

    return response.body;
  }

  Future<String> recognizeFigure(String id) async {
    final uri = _buildUri("recognizeFigure", params: {"id": id});

    Log.d(_tag, "-> GET url = $uri");

    http.Response response;
    try {
      response = await _client.get(uri);
    } catch (e) {
      Log.e(_tag, "<- GET url = $uri, error = $e");
      throw e;
    }

    Log.d(_tag, "<- GET url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- GET url = $uri, headers = ${response.headers}");
    Log.d(_tag, "<- GET url = $uri, body = ${response.body}");

    return response.body;
  }

  Future<ApproximateResponse> approximateFigure(String id, int type) async {
    final uri = _buildUri("approximateFigure", params: {
      "id": id,
      "type": "$type",
    });

    Log.d(_tag, "-> GET url = $uri");

    http.Response response;
    try {
      response = await _client.get(uri);
    } catch (e) {
      Log.e(_tag, "<- GET url = $uri, error = $e");
      throw e;
    }

    Log.d(_tag, "<- GET url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- GET url = $uri, headers = ${response.headers}");
    Log.d(_tag, "<- GET url = $uri, body = ${response.body}");

    return deserialize<ApproximateResponse>(jsonDecode(response.body));
  }

  Future<TessellateResponse> tessellateFigure(
    String id,
    BuiltList<BuiltList<int>> polygonVertices,
    BuiltList<BuiltList<int>> figureVertices,
  ) async {
    final uri = _buildUri("tessellateFigure", params: {"id": id});

    Log.d(_tag, "-> GET url = $uri");

    final tessellateRequest = TessellateRequest(
      (b) => b
        ..polygonVertices = polygonVertices.toBuilder()
        ..figureVertices = figureVertices.toBuilder(),
    );

    final body = jsonEncode(serialize<TessellateRequest>(tessellateRequest));

    http.Response response;
    try {
      response = await _client.post(
        uri,
        headers: {"Content-Type": ContentType.json.mimeType},
        body: body,
      );
    } catch (e) {
      Log.e(_tag, "<- GET url = $uri, error = $e");
      throw e;
    }

    Log.d(_tag, "<- GET url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- GET url = $uri, headers = ${response.headers}");
    Log.d(_tag, "<- GET url = $uri, body = ${response.body}");

    return deserialize<TessellateResponse>(jsonDecode(response.body));
  }

  Uri _buildUri(String unencodedPath, {Map<String, String> params}) {
    return Uri.http(
      authority,
      "$unencodedPath",
      params,
    );
  }
}
