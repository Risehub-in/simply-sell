import '../../domain/repository/location_repository.dart';
import '../data_source/local_data_source/location_local_data_source.dart';
import '../data_source/remote_data_source/location_remote_data_source.dart';
import '../models/coordinates_model.dart';
import '../models/location_model.dart';
import '../models/prediction_model.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationLocalDataSource locationLocalDataSource;
  final LocationRemoteDataSource locationRemoteDataSource;
  LocationRepositoryImpl(
      {required this.locationLocalDataSource,
      required this.locationRemoteDataSource});

  @override
  Future<List<PredictionModel>> getSearchPrediction(
      String input, String uuidToken) {
    return locationRemoteDataSource.getSearchPrediction(input, uuidToken);
  }

  @override
  Future<CoordinatesModel> getCoordinatesByPlaceID(String placeID) {
    return locationRemoteDataSource.getCoordinatesByPlaceID(placeID);
  }

  @override
  Future<LocationModel> getAddressByCoordinates(
      double latitude, double longitude) {
    return locationRemoteDataSource.getAddressBtCoordinates(
        latitude, longitude);
  }

  @override
  Future<CoordinatesModel> getCoordinates() {
    return locationLocalDataSource.getCoordinates();
  }

  @override
  Future<bool> isUserInDeliveryRadius(double branchLat, double branchLng,
      double userLat, double userLng, double branchRadius) async {
    return locationRemoteDataSource.isUserInDeliveryRadius(
        branchLat, branchLng, userLat, userLng, branchRadius);
  }
}
