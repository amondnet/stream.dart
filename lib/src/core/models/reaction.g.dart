// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return Reaction(
    id: json['id'] as String,
    appID: json['app_id'] as int,
    kind: json['kind'] as String,
    userID: json['user_id'] as String,
    activityID: json['activity_id'] as String,
    parent: json['parent'] as String,
    extra: json['extra'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
      'id': instance.id,
      'app_id': instance.appID,
      'kind': instance.kind,
      'user_id': instance.userID,
      'activity_id': instance.activityID,
      'parent': instance.parent,
      'extra': instance.extra,
    };
