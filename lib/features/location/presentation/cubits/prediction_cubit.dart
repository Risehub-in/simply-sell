import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/prediction_entity.dart';
import '../../domain/usecases/get_search_prediction_usecase.dart';

part 'prediction_state.dart';

class PredictionCubit extends Cubit<PredictionState> {
  final GetSearchPredictionUsecase searchAddressUsecase;
  PredictionCubit({required this.searchAddressUsecase})
      : super(PredictionInitial());

  searchAddressByKeyword(String input, String uuidToken) async {
    try {
      emit(PredictionStateLoading());
      List<PredictionEntity> predictions =
          await searchAddressUsecase.call(input, uuidToken);
      emit(PredictionStateDone(predictions: predictions));
    } catch (e) {
      emit(PredictionStateError(message: e.toString()));
    }
  }

  clearPredictions() {
    List<PredictionEntity> predictions = [];
    emit(PredictionStateDone(predictions: predictions));
  }
}
