import 'package:equatable/equatable.dart';

class UomEntity extends Equatable {
  final String uomName;

  UomEntity({required this.uomName});

  @override
  List<Object?> get props => [uomName];
}
