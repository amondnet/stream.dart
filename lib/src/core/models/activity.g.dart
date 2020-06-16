// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return Activity(
    id: json['id'] as String,
    actor: json['actor'] as String,
    verb: json['verb'] as String,
    object: json['object'] as String,
    foreignID: json['foreign_id'] as String,
    target: json['target'] as String,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    origin: json['origin'] as String,
    score: (json['score'] as num)?.toDouble(),
    extra: json['extra'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'id': instance.id,
      'actor': instance.actor,
      'verb': instance.verb,
      'object': instance.object,
      'foreign_id': instance.foreignID,
      'target': instance.target,
      'time': instance.time?.toIso8601String(),
      'origin': instance.origin,
      'score': instance.score,
      'extra': instance.extra,
    };

ActivityRequest _$ActivityRequestFromJson(Map json) {
  return ActivityRequest(
    (json['activities'] as List)
        .map((e) => Activity.fromJson(e as Map))
        .toList(),
  );
}

Map<String, dynamic> _$ActivityRequestToJson(ActivityRequest instance) =>
    <String, dynamic>{
      'activities': Activity.ActivityToJson(instance.activities),
    };
