import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  Feed({
    required this.createdAt,
    required this.entryId,
    required this.percentage,
  });

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'entry_id')
  int entryId;

  @JsonKey(name: 'field4')
  String percentage;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
