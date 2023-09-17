import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/location/domain/usecases/get_coordinates_by_place_id_usecase.dart';

import '../../domain/entities/coordinates_entity.dart';
import '../../domain/usecases/get_location_usecase.dart';

part 'coordinates_state.dart';

class CoordinatesCubit extends Cubit<CoordinatesState> {
  final GetCoordinatesUsecase getCoordinatesUsecase;
  final GetCoordinatesByPlaceId getCoordinatesByPlaceId;
  CoordinatesCubit({
    required this.getCoordinatesByPlaceId,
    required this.getCoordinatesUsecase,
  }) : super(CoordinatesStateLoading()) {
    getCoordintes();
  }

  Future<void> getCoordintes() async {
    try {
      emit(CoordinatesStateLoading());
      final coordinates = await getCoordinatesUsecase.call();
      emit(CoordinatesStateDone(coordinates: coordinates));
    } catch (e) {
      emit(CoordinatesStateError(message: e.toString()));
    }
  }

  Future<void> getCoordinatesByPlaceID(String placeId) async {
    try {
      emit(CoordinatesStateLoading());

      final coordinates = await getCoordinatesByPlaceId.call(placeId);

      emit(CoordinatesStateDone(coordinates: coordinates));
    } catch (e) {
      emit(CoordinatesStateError(message: e.toString()));
    }
  }
}
