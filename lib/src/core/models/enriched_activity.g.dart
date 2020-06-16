// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enriched_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnrichedActivity _$EnrichedActivityFromJson(Map<String, dynamic> json) {
  return EnrichedActivity(
    id: json['id'] as String,
    actor: dataFromJson(json['actor']),
    verb: json['verb'] as String,
    object: dataFromJson(json['object']),
    foreignID: json['foreign_id'] as String,
    target: dataFromJson(json['target']),
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    origin: json['origin'] as String,
    to: (json['to'] as List)
        ?.map((e) =>
            e == null ? null : FeedID.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    score: (json['score'] as num)?.toDouble(),
    reactionCounts: (json['reaction_counts'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
    extra: json['extra'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$EnrichedActivityToJson(EnrichedActivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('actor', instance.actor);
  writeNotNull('verb', instance.verb);
  writeNotNull('object', instance.object);
  writeNotNull('foreign_id', instance.foreignID);
  writeNotNull('target', instance.target);
  writeNotNull('time', instance.time?.toIso8601String());
  writeNotNull('origin', instance.origin);
  writeNotNull('to', instance.to);
  writeNotNull('score', instance.score);
  writeNotNull('reaction_counts', instance.reactionCounts);
  writeNotNull('extra', instance.extra);
  return val;
}
