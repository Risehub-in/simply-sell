import 'package:simply_sell/features/location/domain/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({required super.address});

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(address: json['address']);
  }
}
