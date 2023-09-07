part of 'prediction_cubit.dart';

sealed class PredictionState extends Equatable {
  const PredictionState();

  @override
  List<Object> get props => [];
}

final class PredictionInitial extends PredictionState {}

final class PredictionStateLoading extends PredictionState {}

final class PredictionStateDone extends PredictionState {
  final List<PredictionEntity> predictions;

  PredictionStateDone({required this.predictions});

  @override
  List<Object> get props => [predictions];
}

final class PredictionStateError extends PredictionState {
  final String message;

  PredictionStateError({required this.message});

  @override
  List<Object> get props => [message];
}
