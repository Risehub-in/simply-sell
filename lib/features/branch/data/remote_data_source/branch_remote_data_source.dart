import '../models/branch_model.dart';

abstract class BranchRemoteDataSource {
  Future<BranchModel> getBranchDetails();
}
