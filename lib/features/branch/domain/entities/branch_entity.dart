import 'package:equatable/equatable.dart';

class BranchEntity extends Equatable {
  final int id;
  final String branchName;
  final String branchAddress;
  final int branchContactNo;
  final double branchRadius;
  final double branchLatitude;
  final double branchLongitude;

  BranchEntity({
    required this.id,
    required this.branchName,
    required this.branchAddress,
    required this.branchContactNo,
    required this.branchRadius,
    required this.branchLatitude,
    required this.branchLongitude,
  });

  @override
  List<Object?> get props => [
        id,
        branchName,
        branchAddress,
        branchContactNo,
        branchRadius,
        branchLatitude,
        branchLongitude
      ];
}
