import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'serializers.dart';

part 'reaction.g.dart';

@JsonSerializable()
class Reaction {
  final String id;
  final int appID;
  final String kind;
  final String userID;
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
  final Map<String, Object> extra;

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
    return Reaction(
      id: json['id'] as String,
      appID: json['appID'] as int,
      kind: json['kind'] as String,
      userID: json['userID'] as String,
      activityID: json['activityID'] as String,
      parent: json['parent'] as String,
      extra: json,
    );
  }
}
