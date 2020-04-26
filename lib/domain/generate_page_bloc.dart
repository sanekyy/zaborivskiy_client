import 'package:client/data/model/state/generate_page_state.dart';
import 'package:client/domain/approximate_page_bloc.dart';
import 'package:client/domain/main_bloc.dart';
import 'package:client/service/api_service.dart';
import 'package:client/utils/log.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

const _tag = "generate_page_bloc";

class GeneratePageBloc {
  static final instance = GeneratePageBloc();
  final _apiService = ApiService.instance;
  final _uuid = Uuid();

  final _stateSubject = BehaviorSubject<GeneratePageState>();

  Stream<GeneratePageState> get state => _stateSubject;

  GeneratePageBloc() {
    _init();
  }

  void _init() {
    _stateSubject.add(GeneratePageState((b) => b..enabled = true));
  }

  void _updateState(updates(GeneratePageStateBuilder b)) {
    final newState = _stateSubject.value.rebuild(updates);
    Log.d(_tag, "updateState: $newState");
    _stateSubject.add(newState);
  }

  void generateFigure(int type) async {
    MainBloc.id = _uuid.v4();
    final imageUrl = await _apiService.generateFigure(MainBloc.id, type);
    _updateState((b) => b..imageUrl = imageUrl);
    final rawPredictedType = int.parse(
      await _apiService.recognizeFigure(MainBloc.id),
    );

    String predictedType;
    switch (rawPredictedType) {
      case 1:
        predictedType = "Треугольник";
        break;
      case 2:
        predictedType = "Квадрат";
        break;
      case 3:
        predictedType = "Шестиугольник";
        break;
      default:
        throw Exception("Unknown figure type");
    }

    _updateState((b) => b.predictedType = predictedType);
    ApproximatePageBloc.instance.approximateFigure(type);
  }
}
