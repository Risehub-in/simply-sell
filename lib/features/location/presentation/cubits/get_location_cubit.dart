import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/location_address.dart';
import '../../domain/usecases/get_address_by_coordinates_usecase.dart';

part 'get_location_state.dart';

class GetLocationCubit extends Cubit<GetLocationState> {
  final GetAddressByCoordinatesUsecase getAddressByCoordinatesUsecase;
  GetLocationCubit({
    required this.getAddressByCoordinatesUsecase,
  }) : super(GetLocationStateLoading());

  Future<void> getAddressByCoordinates(
      double latitude, double longitude) async {
    try {
      emit(GetLocationStateLoading());
      final LocationAddressEntity location =
          await getAddressByCoordinatesUsecase.call(latitude, longitude);
      emit(GetLocationStateDone(locationAddress: location));
    } catch (e) {
      emit(GetLocationStateError(message: e.toString()));
    }
  }

  void getLocationFromSetLocation(LocationAddressEntity locationAddress) {
    emit(GetLocationStateDone(locationAddress: locationAddress));
  }
}
