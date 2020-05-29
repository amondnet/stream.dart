// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return Reaction(
    id: json['id'] as String,
    appID: json['appID'] as int,
    kind: json['kind'] as String,
    userID: json['userID'] as String,
    activityID: json['activityID'] as String,
    parent: json['parent'] as String,
    extra: json['extra'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
      'id': instance.id,
      'appID': instance.appID,
      'kind': instance.kind,
      'userID': instance.userID,
      'activityID': instance.activityID,
      'parent': instance.parent,
      'extra': instance.extra,
    };
