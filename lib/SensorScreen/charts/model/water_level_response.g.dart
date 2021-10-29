// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_level_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaterLevelResponse _$WaterLevelResponseFromJson(Map<String, dynamic> json) =>
    WaterLevelResponse(
      feeds: (json['feeds'] as List<dynamic>)
          .map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WaterLevelResponseToJson(WaterLevelResponse instance) =>
    <String, dynamic>{
      'feeds': instance.feeds,
    };
