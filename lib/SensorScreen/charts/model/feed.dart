import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  Feed({
    required this.createdAt,
    required this.entryId,
    required this.field4,
  });

  String createdAt;
  int entryId;
  String field4;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
