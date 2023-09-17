import 'dart:convert';

import 'package:simply_sell/features/location/data/models/location_address.dart';
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
    print(requestURL);
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
  Future<LocationAddressModel> getAddressByCoordinates(
      double latitude, double longitude) async {
    try {
      var url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$mapsApiKey";
      print(url);
      final response = await http.get(Uri.parse(url));
      var results = jsonDecode(response.body.toString());
      LocationAddressModel getLocationModel =
          LocationAddressModel.fromJson(results);
      return getLocationModel;
    } catch (error) {
      print('Error----------------$error');
      throw error; // Rethrow the error to be caught by the caller.
    }
  }

  @override
  Future<bool> isUserInDeliveryRadius(double branchLat, double branchLng,
      double userLat, double userLng, double branchRadius) async {
    var url =
        "https://maps.googleapis.com/maps/api/distancematrix/json?origins=$branchLat,$branchLng&destinations=$userLat,$userLng&key=$mapsApiKey";
    print(url);
    try {
      final response = await http.get(Uri.parse(url));

      final decodedData = json.decode(response.body.toString())['rows'][0]
          ['elements'][0]['distance']['text'];

      List<String> distanceParts = decodedData.split(" ");

      final distance = double.parse(distanceParts[0]);

      if (distance < branchRadius) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
