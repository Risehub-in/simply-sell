import '../entities/coordinates_entity.dart';
import '../entities/location_address.dart';
import '../entities/prediction_entity.dart';

abstract class LocationRepository {
  Future<CoordinatesEntity> getCoordinates();
  Future<List<PredictionEntity>> getSearchPrediction(
      String input, String uuidToken);
  Future<CoordinatesEntity> getCoordinatesByPlaceID(String placeID);
  Future<LocationAddressEntity> getAddressByCoordinates(
      double latitude, double longitude);
  Future<bool> isUserInDeliveryRadius(double branchLat, double branchLng,
      double userLat, double userLng, double branchRadius);
}
