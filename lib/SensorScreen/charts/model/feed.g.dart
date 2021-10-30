// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      createdAt: json['created_at'] as String,
      entryId: json['entry_id'] as int,
      percentage: json['field4'] as String,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'entry_id': instance.entryId,
      'field4': instance.percentage,
    };
