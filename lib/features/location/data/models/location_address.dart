import 'package:simply_sell/features/location/domain/entities/location_address.dart';

class LocationAddressModel extends LocationAddressEntity {
  LocationAddressModel(
      {required super.addressTitle, required super.addressSubtitle});

  factory LocationAddressModel.fromJson(Map<String, dynamic> json) {
    return LocationAddressModel(
        addressTitle: json['results'][0]['address_components'][1]['long_name'],
        addressSubtitle: json['results'][0]['formatted_address']);
  }
}
