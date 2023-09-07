import 'package:simply_sell/features/branch/domain/entities/branch_entity.dart';

abstract class BranchRepository {
  Future<BranchEntity> getBranchDetails();
}
