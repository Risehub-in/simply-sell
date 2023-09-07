import 'package:simply_sell/features/branch/domain/entities/branch_entity.dart';
import 'package:simply_sell/features/branch/domain/repositories/branch_repository.dart';

class GetBranchDetailsUsecase {
  final BranchRepository branchRepository;

  GetBranchDetailsUsecase({required this.branchRepository});

  Future<BranchEntity> call() => branchRepository.getBranchDetails();
}
