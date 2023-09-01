import '../entities/location_entity.dart';
import '../repository/location_repository.dart';

class GetAddressByCoordinatesUsecase {
  final LocationRepository locationRepository;
  GetAddressByCoordinatesUsecase({required this.locationRepository});
  Future<LocationEntity> call(latitude, longitude) =>
      locationRepository.getAddressByCoordinates(latitude, longitude);
}
