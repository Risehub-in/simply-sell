import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/location/domain/usecases/get_coordinates_by_place_id_usecase.dart';

import '../../domain/entities/coordinates_entity.dart';

part 'coordinates_state.dart';

class CoordinatesCubt extends Cubit<CoordinatesState> {
  final GetCoordinatesByPlaceId getCoordinatesUsecase;
  CoordinatesCubt({required this.getCoordinatesUsecase})
      : super(NewAddressInitial());

  getCoordinatesByPlaceID(String placeId) async {
    try {
      emit(CoordinatesStateLoading());
      CoordinatesEntity coordinates;

      coordinates = await getCoordinatesUsecase.call(placeId);

      emit(CoordinatesStateDone(location: coordinates));
    } catch (e) {
      emit(CoordinatesStateError(message: e.toString()));
    }
  }
}
