import 'dart:convert';

import 'package:api_example_app/SensorScreen/charts/model/water_level_response.dart';
import 'package:http/http.dart' as http;

class WaterLevelService {
  Future<WaterLevelResponse> fetchWaterLevel() async {
    var url =
        Uri.parse('https://api.thingspeak.com/channels/1226265/field/1.json');
    http.Response response = await http.get(url);

    return WaterLevelResponse.fromJson(jsonDecode(response.body));
  }
}
