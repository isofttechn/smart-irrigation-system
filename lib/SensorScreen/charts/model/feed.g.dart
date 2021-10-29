// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      createdAt: json['createdAt'] as String,
      entryId: json['entryId'] as int,
      field4: json['field4'] as String,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'entryId': instance.entryId,
      'field4': instance.field4,
    };
