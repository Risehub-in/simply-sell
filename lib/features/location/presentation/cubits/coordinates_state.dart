part of 'coordinates_cubit.dart';

abstract class CoordinatesState extends Equatable {
  const CoordinatesState();
}

class NewAddressInitial extends CoordinatesState {
  @override
  List<Object> get props => [];
}

class CoordinatesStateLoading extends CoordinatesState {
  CoordinatesStateLoading();

  @override
  List<Object?> get props => [];
}

class CoordinatesStateError extends CoordinatesState {
  final String? message;

  CoordinatesStateError({this.message});

  @override
  List<Object> get props => [message!];
}

class CoordinatesStateDone extends CoordinatesState {
  final CoordinatesEntity location;

  CoordinatesStateDone({required this.location});

  @override
  List<Object> get props => [location];
}
