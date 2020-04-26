import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:client/data/model/state/tessellate_page_state.dart';
import 'package:client/domain/main_bloc.dart';
import 'package:client/service/api_service.dart';
import 'package:client/utils/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

const _tag = "tessellate_page_bloc";

class TessellatePageBloc {
  static final instance = TessellatePageBloc();
  final _apiService = ApiService.instance;

  final _stateSubject = BehaviorSubject<TessellatePageState>();

  Stream<TessellatePageState> get state => _stateSubject;

  TessellatePageBloc() {
    _init();
  }

  void _init() {
    _stateSubject.add(TessellatePageState());
  }

  void _updateState(updates(TessellatePageStateBuilder b)) {
    final newState = _stateSubject.value.rebuild(updates);
    Log.d(_tag, "updateState: $newState");
    _stateSubject.add(newState);
  }

  void run(List<Offset> points) async {
    final polygonVertices = points
        .map((offset) => [offset.dx.toInt(), offset.dy.toInt()].toBuiltList())
        .toBuiltList();

    final result = await _apiService.tessellateFigure(
      MainBloc.id,
      polygonVertices,
      MainBloc.figureVertices,
    );
    imageCache.clear();
    _updateState(
      (b) => b
        ..imageUrl = result.imageUrl
        ..figuresCount = result.figuresCount
        ..coverPercent = result.coverPercent,
    );
  }
}
