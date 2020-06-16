import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/check.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  final String id;
  final Map<String, dynamic> data = {};

  Data([this.id = '']) {
    checkNotNull(id, message: 'ID required');
  }

  Data set<T>(String key, T value) {
    checkArgument('id' != key, message: "Key can't be named 'id'");
    checkNotNull(key, message: "Key can't be null");

    data['key'] = value;
    return this;
  }

  Data from(Map<String, dynamic> map) {
    checkNotNull(data, message: "Can't extract data from null");
    map.forEach((key, value) {
      set(key, value);
    });
    return this;
  }

  T get<T>(String key) {
    checkNotNull(key);
    return data[key] as T;
  }

  static Data fromJson(Map<String, dynamic> json) {
    final data = Data(json['id'] as String);
    json.forEach((key, value) {
      if (key == 'id') {
        //continue
      } else if (key == 'data') {
        data.from(value as Map);
      } else {
        data.set(key, value);
      }
    });
    return data;
  }

  @override
  String toString() {
    return 'Data{id: $id, data: $data}';
  }
}
