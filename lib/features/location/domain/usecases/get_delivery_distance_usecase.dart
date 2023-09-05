import '../repository/location_repository.dart';

class CheckDeliveryRadiusUsecase {
  final LocationRepository locationRepository;

  CheckDeliveryRadiusUsecase({required this.locationRepository});

  Future<bool> call(double branchLat, double branchLng, double userLat,
          double userLng, double branchRadius) =>
      locationRepository.isUserInDeliveryRadius(
          branchLat, branchLng, userLat, userLng, branchRadius);
}
