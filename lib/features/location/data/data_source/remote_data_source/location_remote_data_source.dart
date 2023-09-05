import 'package:simply_sell/features/location/data/models/coordinates_model.dart';
import '../../models/location_model.dart';
import '../../models/prediction_model.dart';

abstract class LocationRemoteDataSource {
  Future<List<PredictionModel>> getSearchPrediction(
      String input, String uuidToken);
  Future<CoordinatesModel> getCoordinatesByPlaceID(String placeID);
  Future<LocationModel> getAddressBtCoordinates(
      double latitude, double longitude);

  Future<bool> isUserInDeliveryRadius(double branchLat, double branchLng,
      double userLat, double userLng, double branchRadius);
}
