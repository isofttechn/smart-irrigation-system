import 'package:http/http.dart' as http;

class WaterLevelService {
  Future<String> fetchWaterLevel() async {
    var url =
        Uri.parse('https://api.thingspeak.com/channels/1226265/field/1.json');
    http.Response response = await http.get(url);
    print(response.body);
    return response.body.toString();
  }
}
