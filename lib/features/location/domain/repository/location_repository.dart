import '../entities/coordinates_entity.dart';
import '../entities/location_entity.dart';
import '../entities/prediction_entity.dart';

abstract class LocationRepository {
  Future<CoordinatesEntity> getLocation();
  Future<List<PredictionEntity>> getSearchPrediction(
      String input, String uuidToken);
  Future<CoordinatesEntity> getCoordinatesByPlaceID(String placeID);
  Future<LocationEntity> getAddressByCoordinates(
      double latitude, double longitude);
}
