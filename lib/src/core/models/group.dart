import 'package:freezed_annotation/freezed_annotation.dart';

import 'activity.dart';
part 'group.g.dart';

@JsonSerializable()
class Group {
  final String id;
  final String group;
  final List<Activity> activities;
  @JsonKey(name: 'actor_count')
  final int actorCount;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Group(this.id, this.group, this.activities, this.actorCount, this.createdAt,
      this.updatedAt);

  static Group fromJson(Map json) => _$GroupFromJson(json);
}
