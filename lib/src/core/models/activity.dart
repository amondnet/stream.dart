class Activity {
  String id;
  String actor;
  String verb;
  String object;
  String foreignID;
  String target;
  // TODO: support Java 8 Date/Time types?
  DateTime time;
  String origin;
  //List<FeedID> to;
  double score;
  Map<String, Object> extra;

  static Activity fromJson(Map<String, dynamic> json) {
    return _$ActivityFromJson(json);
  }

  static Activity _$ActivityFromJson(Map json) {
    return Activity()
      ..id = json['id'] as String
      ..actor = json['actor'] as String
      ..verb = json['verb'] as String
      ..object = json['object'] as String
      ..foreignID = json['foreignID'] as String
      ..target = json['target'] as String
      ..time =
          json['time'] == null ? null : DateTime.parse(json['time'] as String)
      ..origin = json['origin'] as String
      ..score = (json['score'] as num)?.toDouble()
      ..extra = json;
  }
}
