import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final String address;
  LocationEntity({
    required this.address,
  });

  @override
  List<Object?> get props => [address];
}
