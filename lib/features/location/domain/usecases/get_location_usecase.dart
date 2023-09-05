import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import '../repository/location_repository.dart';

class GetCoordinatesUsecase {
  final LocationRepository locationRepository;
  GetCoordinatesUsecase({required this.locationRepository});
  Future<CoordinatesEntity> call() => locationRepository.getCoordinates();
}
