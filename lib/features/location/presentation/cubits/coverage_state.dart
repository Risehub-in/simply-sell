part of 'coverage_cubit.dart';

sealed class CoverageState extends Equatable {
  const CoverageState();

  @override
  List<Object> get props => [];
}

final class CoverageInitial extends CoverageState {}

final class CoverageStateLoading extends CoverageState {}

final class CoverageStateDone extends CoverageState {
  final bool isUserInDeliveryRadius;

  CoverageStateDone({required this.isUserInDeliveryRadius});

  @override
  List<Object> get props => [isUserInDeliveryRadius];
}

final class CoverageStateError extends CoverageState {
  final String message;

  CoverageStateError({required this.message});

  @override
  List<Object> get props => [message];
}
