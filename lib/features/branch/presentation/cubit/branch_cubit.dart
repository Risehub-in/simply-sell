import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/branch/domain/entities/branch_entity.dart';
import 'package:simply_sell/features/branch/domain/usecases/get_branch_details_usecase.dart';

part 'branch_state.dart';

class BranchCubit extends Cubit<BranchState> {
  GetBranchDetailsUsecase getBranchDetailsUsecase;
  BranchCubit({required this.getBranchDetailsUsecase})
      : super(BranchStateInitial());

  Future<void> getBranchDetails() async {
    try {
      final branchDetails = await getBranchDetailsUsecase.call();
      emit(BranchStateDone(branchDetails: branchDetails));
    } catch (e) {
      emit(BranchStateError(message: e.toString()));
    }
  }
}
