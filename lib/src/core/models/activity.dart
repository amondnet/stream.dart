import 'package:freezed_annotation/freezed_annotation.dart';
part 'activity.g.dart';

@JsonSerializable()
class Activity {
  String id;
  String actor;
  String verb;
  String object;
  @JsonKey(name: 'foreign_id')
  String foreignID;
  String target;

  // TODO: support Java 8 Date/Time types?
  DateTime time;
  String origin;

  //List<FeedID> to;
  double score;
  Map<String, Object> extra;

  Activity(
      {this.id,
      this.actor,
      this.verb,
      this.object,
      this.foreignID,
      this.target,
      this.time,
      this.origin,
      this.score,
      this.extra});

  static Activity fromJson(Map<String, dynamic> json) {
    return _$ActivityFromJson(json);
  }

  static List<Activity> listFromJson(List<Map<String, dynamic>> json) {
    return json.map((e) => fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() => _$ActivityToJson(this);

  static List<Map<String, dynamic>> ActivityToJson(List<Activity> activities) {
    return activities.map((e) => e.toJson()).toList();
  }
}

@JsonSerializable(nullable: false, anyMap: true)
class ActivityRequest {
  @JsonKey(toJson: Activity.ActivityToJson)
  final List<Activity> activities;

  ActivityRequest(this.activities);

  factory ActivityRequest.fromJson(Map<String, dynamic> json) {
    return _$ActivityRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityRequestToJson(this);
}
