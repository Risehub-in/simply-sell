import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/branch/domain/usecases/get_branch_details_usecase.dart';
import 'package:simply_sell/features/location/domain/usecases/get_delivery_distance_usecase.dart';

part 'coverage_state.dart';

class CoverageCubit extends Cubit<CoverageState> {
  final CheckDeliveryRadiusUsecase checkDeliveryRadiusUsecase;
  final GetBranchDetailsUsecase getBranchDetailsUsecase;

  CoverageCubit({
    required this.checkDeliveryRadiusUsecase,
    required this.getBranchDetailsUsecase,
  }) : super(CoverageStateLoading());

  Future<void> isInDeliveryRadius(double userLat, double userLng) async {
    try {
      emit(CoverageStateLoading());
      final branchDetails = await getBranchDetailsUsecase.call();
      final isUserInDeliveryRadius = await checkDeliveryRadiusUsecase.call(
          branchDetails.branchLatitude,
          branchDetails.branchLongitude,
          userLat,
          userLng,
          branchDetails.branchRadius);
      emit(CoverageStateDone(isUserInDeliveryRadius: isUserInDeliveryRadius));
    } catch (e) {
      emit(
        CoverageStateError(message: e.toString()),
      );
    }
  }
}
