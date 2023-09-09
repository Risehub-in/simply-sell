import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final int? id;
  final String userUid;
  final String areaLocality;
  final String flatFloorBldg;
  final double latitude;
  final double longitude;
  final String? landmark;
  final String addressType;

  AddressEntity({
    this.id,
    required this.userUid,
    required this.areaLocality,
    required this.flatFloorBldg,
    required this.latitude,
    required this.longitude,
    this.landmark,
    required this.addressType,
  });

  @override
  List<Object?> get props => [
        id,
        userUid,
        areaLocality,
        flatFloorBldg,
        latitude,
        longitude,
        landmark,
        addressType,
      ];
}
