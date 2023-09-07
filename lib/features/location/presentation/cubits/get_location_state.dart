part of 'get_location_cubit.dart';

abstract class GetLocationState extends Equatable {
  const GetLocationState();
}

class GetLocationInitial extends GetLocationState {
  @override
  List<Object> get props => [];
}

class GetLocationStateLoading extends GetLocationState {
  GetLocationStateLoading();

  @override
  List<Object?> get props => [];
}

class GetLocationStateError extends GetLocationState {
  final String message;

  GetLocationStateError({required this.message});

  @override
  List<Object> get props => [message];
}

class GetLocationStateDone extends GetLocationState {
  final LocationAddressEntity locationAddress;

  GetLocationStateDone({required this.locationAddress});

  @override
  List<Object> get props => [locationAddress];
}