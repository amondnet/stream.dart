import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:stream/src/core/models/user_data.dart';

import 'content.dart';
import 'feature.dart';
import 'serializers.dart';

part 'engagement.g.dart';

abstract class Engagement implements Built<Engagement, EngagementBuilder> {
  Engagement._();
  factory Engagement([void Function(EngagementBuilder) updates]) = _$Engagement;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Engagement.serializer, this);
  }

  static Engagement fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Engagement.serializer, json);
  }

  static Serializer<Engagement> get serializer => _$engagementSerializer;

  String get feedID;
  UserData get userData;
  String get label;
  Content get content;
  int get boost;
  int get position;
  String get location;
  BuiltList<Feature> get features;
  DateTime get trackedAt;
}
