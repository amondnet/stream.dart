import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'feed_id.dart';
import 'reaction.dart';
part 'enriched_activity.g.dart';

Data dataFromJson(dynamic value) {
  if (value is String) {
    return Data(value);
  }
  return Data.fromJson(value);
}

@JsonSerializable(includeIfNull: false)
class EnrichedActivity {
  final String id;
  @JsonKey(fromJson: dataFromJson)
  final Data actor;
  final String verb;
  @JsonKey(fromJson: dataFromJson)
  final Data object;
  @JsonKey(name: 'foreign_id')
  final String foreignID;
  @JsonKey(fromJson: dataFromJson)
  final Data target;

  // TODO: support Java 8 Date/Time types?
  final DateTime time;
  final String origin;
  final List<FeedID> to;
  final double score;
  @JsonKey(name: 'reaction_counts')
  final Map<String, num> reactionCounts;
  @JsonKey(ignore: true)
  final Map<String, List<Reaction>> ownReactions;
  @JsonKey(ignore: true)
  final Map<String, List<Reaction>> latestReactions;
  Map<String, Object> extra;

  EnrichedActivity(
      {this.id,
      this.actor,
      this.verb,
      this.object,
      this.foreignID,
      this.target,
      this.time,
      this.origin,
      this.to,
      this.score,
      this.reactionCounts,
      this.ownReactions,
      this.latestReactions,
      this.extra});

  static EnrichedActivity fromJson(Map<String, dynamic> json) {
    final activity = _$EnrichedActivityFromJson(json);
    activity.extra = json;
    return activity;
  }

  @override
  String toString() {
    return 'EnrichedActivity{id: $id, actor: $actor, verb: $verb, object: $object, foreignID: $foreignID, target: $target, time: $time, origin: $origin, to: $to, score: $score, reactionCounts: $reactionCounts, ownReactions: $ownReactions, latestReactions: $latestReactions, extra: $extra}';
  }
}
