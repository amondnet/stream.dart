import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:stream/src/core/models/engagement.dart';

import 'feature.dart';
import 'user_data.dart';

part 'serializers.g.dart';

@SerializersFor([
  // TODO: add the built values that require serialization
  Engagement, UserData, Feature
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
