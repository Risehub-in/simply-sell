part of 'location_cubit.dart';

abstract class LocationState extends Equatable {
  const LocationState();
}

class LocationInitial extends LocationState {
  @override
  List<Object> get props => [];
}

class LocationStateLoading extends LocationState {
  LocationStateLoading();

  @override
  List<Object?> get props => [];
}

class LocationStateError extends LocationState {
  final String? message;

  LocationStateError({this.message});

  @override
  List<Object> get props => [message!];
}

class LocationStateDone extends LocationState {
  final LocationEntity location;

  LocationStateDone({required this.location});

  @override
  List<Object> get props => [location];
}
