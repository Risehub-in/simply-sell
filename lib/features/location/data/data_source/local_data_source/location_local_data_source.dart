import 'package:simply_sell/features/location/data/models/coordinates_model.dart';

abstract class LocationLocalDataSource {
  Future<CoordinatesModel> getLocation();
}
