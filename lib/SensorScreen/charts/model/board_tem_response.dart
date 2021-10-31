import 'package:api_example_app/SensorScreen/charts/model/feed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(createToJson: false)
class BoardTemResponse {
  BoardTemResponse({
    required this.feeds,
  });

  @JsonKey(name: 'feeds')
  final List<Feed> feeds;

  factory BoardTemResponse.fromJson(Map<String, dynamic> json) =>
      _$BoardTemResponseFromJson(json);
}
