import 'package:simply_sell/features/branch/domain/entities/branch_entity.dart';

class BranchModel extends BranchEntity {
  BranchModel({
    required super.id,
    required super.branchName,
    required super.branchAddress,
    required super.branchContactNo,
    required super.branchRadius,
    required super.branchLatitude,
    required super.branchLongitude,
  });

  factory BranchModel.fromJson(Map<String, dynamic> json) {
    return BranchModel(
      branchAddress: json['branch_address'],
      branchContactNo: json['branch_contact_no'],
      branchLatitude: json['branch_latitude'],
      branchLongitude: json['branch_longitude'],
      branchName: json['branch_name'],
      branchRadius: json['branch_radius'].toDouble(),
      id: json['id'],
    );
  }
}
