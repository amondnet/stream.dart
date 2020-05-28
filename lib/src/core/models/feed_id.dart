import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/check.dart';

part 'feed_id.g.dart';

@JsonSerializable()
class FeedID {
  final String slug;
  final String userID;

  FeedID(this.slug, this.userID);

  factory FeedID.fromId(String id) {
    checkNotNull(id, message: "Feed ID can't be null");
    checkArgument(id.contains(':'), message: 'Invalid feed ID');
    final parts = id.split(':');
    checkArgument(parts.length == 2, message: 'Invalid feed ID');

    return FeedID(parts[0], parts[1]);
  }

  static FeedID fromJson(Map json) => _$FeedIDFromJson(json);
}
