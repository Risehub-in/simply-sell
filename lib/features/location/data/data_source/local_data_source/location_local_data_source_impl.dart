import 'package:geolocator/geolocator.dart';
import 'package:simply_sell/features/location/data/models/coordinates_model.dart';
import 'location_local_data_source.dart';

class LocationLocalDataSourceImpl implements LocationLocalDataSource {
  @override
  Future<CoordinatesModel> getCoordinates() async {
    try {
      Position position = await _determinePosition();

      return CoordinatesModel(
          latitude: position.latitude, longitude: position.longitude);
    } catch (error) {
      print('Error----------------$error');
      throw error; // Rethrow the error to be caught by the caller.
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
