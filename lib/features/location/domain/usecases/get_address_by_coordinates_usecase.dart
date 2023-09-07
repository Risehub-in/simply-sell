import '../entities/location_address.dart';
import '../repository/location_repository.dart';

class GetAddressByCoordinatesUsecase {
  final LocationRepository locationRepository;
  GetAddressByCoordinatesUsecase({required this.locationRepository});
  Future<LocationAddressEntity> call(latitude, longitude) =>
      locationRepository.getAddressByCoordinates(latitude, longitude);
}
