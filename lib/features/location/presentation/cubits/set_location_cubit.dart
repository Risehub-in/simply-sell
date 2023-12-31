import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/location/domain/entities/location_address.dart';

import '../../domain/entities/coordinates_entity.dart';
import '../../domain/usecases/get_address_by_coordinates_usecase.dart';

part 'set_location_state.dart';

class SetLocationCubit extends Cubit<SetLocationState> {
  final GetAddressByCoordinatesUsecase getAddressByCoordinatesUsecase;
  SetLocationCubit({required this.getAddressByCoordinatesUsecase})
      : super(SetLocationInitial());

  Future<void> setAddressByCoordinates(
      double latitude, double longitude) async {
    try {
      emit(SetLocationStateLoading());
      final LocationAddressEntity location =
          await getAddressByCoordinatesUsecase.call(latitude, longitude);
      emit(
        SetLocationStateDone(
          locationAddress: location,
          coordinates:
              CoordinatesEntity(latitude: latitude, longitude: longitude),
        ),
      );
    } catch (e) {
      emit(SetLocationStateError(message: e.toString()));
    }
  }

  void setLocationFromSearchAddressPage(
      LocationAddressEntity locationAddress, CoordinatesEntity coordinates) {
    emit(SetLocationStateDone(
        locationAddress: locationAddress, coordinates: coordinates));
  }
}
