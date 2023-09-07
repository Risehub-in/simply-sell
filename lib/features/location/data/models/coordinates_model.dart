import '../../domain/entities/coordinates_entity.dart';

class CoordinatesModel extends CoordinatesEntity {
  CoordinatesModel({
    required super.latitude,
    required super.longitude,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) {
    return CoordinatesModel(
      latitude: json['lat'],
      longitude: json['lng'],
    );
  }
}
