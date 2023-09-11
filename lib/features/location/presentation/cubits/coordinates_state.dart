part of 'coordinates_cubit.dart';

abstract class CoordinatesState extends Equatable {
  const CoordinatesState();
}

class CoordinatesStateLoading extends CoordinatesState {
  CoordinatesStateLoading();

  @override
  List<Object?> get props => [];
}

class CoordinatesStateError extends CoordinatesState {
  final String message;

  CoordinatesStateError({required this.message});

  @override
  List<Object> get props => [message];
}

class CoordinatesStateDone extends CoordinatesState {
  final CoordinatesEntity coordinates;

  CoordinatesStateDone({required this.coordinates});

  @override
  List<Object> get props => [coordinates];
}
