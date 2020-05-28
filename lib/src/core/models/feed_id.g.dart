// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedID _$FeedIDFromJson(Map<String, dynamic> json) {
  return FeedID(
    json['slug'] as String,
    json['userID'] as String,
  );
}

Map<String, dynamic> _$FeedIDToJson(FeedID instance) => <String, dynamic>{
      'slug': instance.slug,
      'userID': instance.userID,
    };
