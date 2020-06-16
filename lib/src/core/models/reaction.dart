import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'serializers.dart';

part 'reaction.g.dart';

@JsonSerializable()
class Reaction {
  final String id;
  @JsonKey(name: 'app_id')
  final int appID;
  final String kind;
  @JsonKey(name: 'user_id')
  final String userID;
  @JsonKey(name: 'activity_id')
  final String activityID;
  final String parent;
  @JsonKey(ignore: true)
  final Map<String, List<Reaction>> ownChildren;
  @JsonKey(ignore: true)
  final Map<String, List<Reaction>> latestChildren;
  @JsonKey(ignore: true)
  final Map<String, num> childrenCounts;
  @JsonKey(ignore: true)
  final Map<String, Object> userData;
  @JsonKey(ignore: true)
  final Map<String, Object> activityData;
  Map<String, Object> extra;

  Reaction(
      {this.id,
      this.appID,
      this.kind,
      this.userID,
      this.activityID,
      this.parent,
      this.ownChildren,
      this.latestChildren,
      this.childrenCounts,
      this.userData,
      this.activityData,
      this.extra});

  factory Reaction.fromJson(Map<String, dynamic> json) {
    final reaction = _$ReactionFromJson(json);
    reaction.extra = json;
    return reaction;
  }

  @override
  String toString() {
    return 'Reaction{id: $id, appID: $appID, kind: $kind, userID: $userID, activityID: $activityID, parent: $parent, ownChildren: $ownChildren, latestChildren: $latestChildren, childrenCounts: $childrenCounts, userData: $userData, activityData: $activityData, extra: $extra}';
  }
}
