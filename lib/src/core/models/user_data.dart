import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'user_data.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {
  UserData._();
  factory UserData([void Function(UserDataBuilder) updates]) = _$UserData;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserData.serializer, this);
  }

  static UserData fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserData.serializer, json);
  }

  static Serializer<UserData> get serializer => _$userDataSerializer;

  String get id;
  String get alias;
}
