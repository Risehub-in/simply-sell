part of 'branch_cubit.dart';

sealed class BranchState extends Equatable {
  const BranchState();

  @override
  List<Object> get props => [];
}

final class BranchStateInitial extends BranchState {}

final class BranchStateLoading extends BranchState {}

final class BranchStateDone extends BranchState {
  final BranchEntity branchDetails;

  BranchStateDone({required this.branchDetails});

  @override
  List<Object> get props => [branchDetails];
}

final class BranchStateError extends BranchState {
  final message;

  BranchStateError({required this.message});

  @override
  List<Object> get props => [message];
}
