part of 'set_location_cubit.dart';

sealed class SetLocationState extends Equatable {
  const SetLocationState();

  @override
  List<Object> get props => [];
}

final class SetLocationInitial extends SetLocationState {}

final class SetLocationStateLoading extends SetLocationState {}

final class SetLocationStateDone extends SetLocationState {
  final LocationAddressEntity locationAddress;
  final CoordinatesEntity coordinates;

  SetLocationStateDone(
      {required this.locationAddress, required this.coordinates});

  @override
  List<Object> get props => [locationAddress, coordinates];
}

final class SetLocationStateError extends SetLocationState {
  final String message;

  SetLocationStateError({required this.message});

  @override
  List<Object> get props => [message];
}
