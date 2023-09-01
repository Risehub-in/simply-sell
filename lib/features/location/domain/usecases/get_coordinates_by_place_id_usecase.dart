import '../entities/coordinates_entity.dart';
import '../repository/location_repository.dart';

class GetCoordinatesByPlaceId {
  final LocationRepository locationRepository;
  GetCoordinatesByPlaceId({required this.locationRepository});
  Future<CoordinatesEntity> call(String placeID) =>
      locationRepository.getCoordinatesByPlaceID(placeID);
}
