import 'dart:convert';

import 'package:api_example_app/SensorScreen/charts/model/board_tem_response.dart';
import 'package:http/http.dart' as http;

class BoardTemService {
  Future<BoardTemResponse> fetchWaterLevel() async {
    var url =
        Uri.parse('https://api.thingspeak.com/channels/1226265/field/2.json');
    http.Response response = await http.get(url);

    return BoardTemResponse.fromJson(jsonDecode(response.body));
  }
}
