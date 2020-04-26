import 'package:built_collection/built_collection.dart';
import 'package:client/data/model/state/approximate_page_state.dart';
import 'package:client/domain/main_bloc.dart';
import 'package:client/domain/tessellate_page_bloc.dart';
import 'package:client/service/api_service.dart';
import 'package:client/utils/log.dart';
import 'package:rxdart/rxdart.dart';

const _tag = "approximate_page_bloc";

class ApproximatePageBloc {
  static final instance = ApproximatePageBloc();
  final _apiService = ApiService.instance;

  final _stateSubject = BehaviorSubject<ApproximatePageState>();

  Stream<ApproximatePageState> get state => _stateSubject;

  ApproximatePageBloc() {
    _init();
  }

  void _init() {
    _stateSubject.add(ApproximatePageState());
  }

  void _updateState(updates(ApproximatePageStateBuilder b)) {
    final newState = _stateSubject.value.rebuild(updates);
    Log.d(_tag, "updateState: $newState");
    _stateSubject.add(newState);
  }

  void approximateFigure(int type) async {
    final result = await _apiService.approximateFigure(MainBloc.id, type);
    _updateState(
      (b) => b
        ..imageUrl = result.imageUrl
        ..square = result.area
        ..perimeter = result.perimeter,
    );

    MainBloc.figureVertices = result.coordinates;
  }
}
