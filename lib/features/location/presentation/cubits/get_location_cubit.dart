import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';

import '../../../branch/domain/usecases/get_branch_details_usecase.dart';
import '../../domain/entities/location_address.dart';
import '../../domain/usecases/get_address_by_coordinates_usecase.dart';
import '../../domain/usecases/get_delivery_distance_usecase.dart';
import '../../domain/usecases/get_location_usecase.dart';

part 'get_location_state.dart';

class GetLocationCubit extends Cubit<GetLocationState> {
  final GetAddressByCoordinatesUsecase getAddressByCoordinatesUsecase;
  final GetCoordinatesUsecase getCoordinatesUsecase;
  final CheckDeliveryRadiusUsecase checkDeliveryRadiusUsecase;
  final GetBranchDetailsUsecase getBranchDetailsUsecase;
  GetLocationCubit({
    required this.getAddressByCoordinatesUsecase,
    required this.getCoordinatesUsecase,
    required this.checkDeliveryRadiusUsecase,
    required this.getBranchDetailsUsecase,
  }) : super(GetLocationStateLoading());

  Future<void> getAddressByCoordinates() async {
    try {
      emit(GetLocationStateLoading());
      final CoordinatesEntity coordinates = await getCoordinatesUsecase.call();
      final branchDetails = await getBranchDetailsUsecase.call();
      final isUserInDeliveryRadius = await checkDeliveryRadiusUsecase.call(
          branchDetails.branchLatitude,
          branchDetails.branchLongitude,
          coordinates.latitude,
          coordinates.longitude,
          branchDetails.branchRadius);
      final LocationAddressEntity location =
          await getAddressByCoordinatesUsecase.call(
              coordinates.latitude, coordinates.longitude);
      emit(
        GetLocationStateDone(
          locationAddress: location,
          coordinates: CoordinatesEntity(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude,
          ),
          isUserInDeliveryRadius: isUserInDeliveryRadius,
        ),
      );
    } catch (e) {
      emit(GetLocationStateError(message: e.toString()));
    }
  }

  void getLocationFromSetLocation(
    LocationAddressEntity locationAddress,
    CoordinatesEntity coordinates,
    bool isUserInDeliveryRadius,
  ) {
    emit(GetLocationStateDone(
      locationAddress: locationAddress,
      coordinates: coordinates,
      isUserInDeliveryRadius: isUserInDeliveryRadius,
    ));
  }

  void getLocationFromAddressList(
    LocationAddressEntity locationAddress,
    CoordinatesEntity coordinates,
    bool isUserInDeliveryRadius,
    int addressId,
    String addressType,
  ) {
    emit(GetLocationStateDone(
      locationAddress: locationAddress,
      coordinates: coordinates,
      isUserInDeliveryRadius: isUserInDeliveryRadius,
      addressId: addressId,
      addressType: addressType,
    ));
  }
}
