import 'package:api_example_app/SensorScreen/charts/model/feed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_level_response.g.dart';

@JsonSerializable()
class WaterLevelResponse {
  WaterLevelResponse({
    required this.feeds,
  });

  @JsonKey(name: 'feeds')
  final List<Feed> feeds;

  factory WaterLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$WaterLevelResponseFromJson(json);
}
