import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'feature.g.dart';

abstract class Feature implements Built<Feature, FeatureBuilder> {
  Feature._();
  factory Feature([void Function(FeatureBuilder) updates]) = _$Feature;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Feature.serializer, this);
  }

  static Feature fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Feature.serializer, json);
  }

  static Serializer<Feature> get serializer => _$featureSerializer;

  String get group;
  String get value;
}
