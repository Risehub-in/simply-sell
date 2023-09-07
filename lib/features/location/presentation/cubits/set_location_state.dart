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

  SetLocationStateDone({required this.locationAddress});

  @override
  List<Object> get props => [locationAddress];
}

final class SetLocationStateError extends SetLocationState {
  final String message;

  SetLocationStateError({required this.message});

  @override
  List<Object> get props => [message];
}
