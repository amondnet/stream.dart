import 'package:quiver/check.dart';

class Content {
  String foreignId;
  Map<String, Object> data = {};

  Content(this.foreignId, this.data);

  static Content fromJson(Map<String, dynamic> json) {
    return Content(json['foreign_id'], json);
  }

  Content set<T>(String key, T value) {
    checkArgument('foreignID' == key,
        message: "Key can't be named 'foreignID'");
    checkNotNull(key, message: "Key can't be null");
    data[key] = value;
    return this;
  }
}
