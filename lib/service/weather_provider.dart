import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_apps/model/weather_model.dart';

class ProviderWeather extends ChangeNotifier {
  // Base API request to get response
  String? place;

  Future<WeatherModel> get(String lat, String long) async {
    place = lat + ',' + long;

    Uri uri = Uri.https('weatherapi-com.p.rapidapi.com', '/current.json', {
      "q": {place}
    });
    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "e1bd61c281mshd52556ffb093505p18e356jsn3c6489fce88e",
      "x-rapidapi-host": "weatherapi-com.p.rapidapi.com",
      "useQueryString": "true"
    });
    if (response.statusCode == HttpStatus.ok) {
      // If server returns an OK response, parse the JSON.
      final jsonMap = json.decode(response.body);
      // print(place);
      // print(response.body);
      return WeatherModel.fromJson(jsonMap);
    } else {
      // If that response was not OK, throw an error.
      throw Exception(
          'API call returned: ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}

class ProviderTextController extends ChangeNotifier {
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();

  void clearText() {
    latitudeController.clear();
    longitudeController.clear();
  }
}
