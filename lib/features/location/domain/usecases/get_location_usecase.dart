import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import '../repository/location_repository.dart';

class GetLocationUsecase {
  final LocationRepository locationRepository;
  GetLocationUsecase({required this.locationRepository});
  Future<CoordinatesEntity> call() => locationRepository.getLocation();
}
