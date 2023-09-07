import 'package:simply_sell/features/branch/data/remote_data_source/branch_remote_data_source.dart';
import 'package:simply_sell/features/branch/domain/repositories/branch_repository.dart';

import '../models/branch_model.dart';

class BranchRepositoryImpl implements BranchRepository {
  final BranchRemoteDataSource branchRemoteDataSource;

  BranchRepositoryImpl({required this.branchRemoteDataSource});
  @override
  Future<BranchModel> getBranchDetails() {
    return branchRemoteDataSource.getBranchDetails();
  }
}
