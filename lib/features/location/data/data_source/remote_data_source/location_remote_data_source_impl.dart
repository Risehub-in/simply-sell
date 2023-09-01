import 'dart:convert';

import 'package:simply_sell/features/location/data/models/location_model.dart';
import 'package:simply_sell/features/location/data/models/prediction_model.dart';
import 'package:simply_sell/keys.dart';
import 'package:http/http.dart' as http;

import '../../models/coordinates_model.dart';
import 'location_remote_data_source.dart';

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  @override
  Future<List<PredictionModel>> getSearchPrediction(
      String input, String uuidToken) async {
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String requestURL =
        '$baseURL?input=$input&key=$mapsApiKey&sessiontoken=$uuidToken';
    try {
      var response = await http.get(Uri.parse(requestURL));
      List<dynamic> data = jsonDecode(response.body.toString())['predictions'];
      final List<PredictionModel> predictions = data
          .map((prediction) => PredictionModel.fromJson(prediction))
          .toList();
      return predictions;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<CoordinatesModel> getCoordinatesByPlaceID(String placeID) async {
    String url =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeID&key=$mapsApiKey";
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        if (decodedData['status'] == 'OK') {
          final location = decodedData['result']['geometry']['location'];
          final double latitude = location['lat'];
          final double longitude = location['lng'];
          print('latitude: $latitude         longitude: $longitude');
          final CoordinatesModel coordinates =
              CoordinatesModel(latitude: latitude, longitude: longitude);
          return coordinates;
        } else {
          throw Exception('Place details not found');
        }
      } else {
        throw Exception('API request failed');
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<LocationModel> getAddressBtCoordinates(
      double latitude, double longitude) async {
    String _formattedAddress = '';
    try {
      var url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$mapsApiKey";
      print(url);
      final response = await http.get(Uri.parse(url));
      var results = jsonDecode(response.body.toString())['results'];
      _formattedAddress =
          '${results[0]['address_components'][0]['long_name']}' +
              ', '
                  '${results[0]['address_components'][2]['long_name']}';
      print(_formattedAddress);

      return LocationModel(address: _formattedAddress);
    } catch (error) {
      print('Error----------------$error');
      throw error; // Rethrow the error to be caught by the caller.
    }
  }
}
