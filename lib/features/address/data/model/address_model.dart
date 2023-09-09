import 'package:simply_sell/features/address/domain/entity/address_entity.dart';

class AddressModel extends AddressEntity {
  AddressModel({
    super.id,
    required super.userUid,
    required super.areaLocality,
    required super.flatFloorBldg,
    required super.latitude,
    required super.longitude,
    required super.addressType,
    super.landmark,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'],
      userUid: json['user_id'],
      areaLocality: json['area_locality'],
      flatFloorBldg: json['flat_floor_bldg'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      addressType: json['address_type'],
      landmark: json['landmark'],
    );
  }
}
