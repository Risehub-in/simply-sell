import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/domain/usecases/get_search_prediction_usecase.dart';

import '../../domain/entities/location_entity.dart';
import '../../domain/usecases/get_address_by_coordinates_usecase.dart';
import '../../domain/usecases/get_location_usecase.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  final GetLocationUsecase getLocationUsecase;
  final GetAddressByCoordinatesUsecase getAddressByCoordinatesUsecase;
  final GetSearchPredictionUsecase getSearchPredictionUsecase;
  LocationCubit({
    required this.getLocationUsecase,
    required this.getAddressByCoordinatesUsecase,
    required this.getSearchPredictionUsecase,
  }) : super(LocationInitial());

  Future getLocationAddress() async {
    try {
      emit(LocationStateLoading());

      CoordinatesEntity coordinates = await getLocationUsecase.call();
      LocationEntity location = await getAddressByCoordinatesUsecase.call(
          coordinates.latitude, coordinates.longitude);
      emit(LocationStateDone(location: location));
    } catch (e) {
      emit(LocationStateError(message: e.toString()));
    }
  }

  Future<CoordinatesEntity> getCurrentLocation() async {
    CoordinatesEntity coordinates = await getLocationUsecase.call();
    return coordinates;
  }

  Future getAddressByCoordinates(double latitude, double longitude) async {
    try {
      emit(LocationStateLoading());
      final LocationEntity location =
          await getAddressByCoordinatesUsecase.call(latitude, longitude);
      emit(LocationStateDone(location: location));
    } catch (e) {
      emit(LocationStateError(message: e.toString()));
    }
  }
}
