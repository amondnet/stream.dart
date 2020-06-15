import 'package:quiver/check.dart';
import 'client.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/feed_id.dart';

class Feed {
  final Client client;
  final FeedID id;

  Feed(this.client, this.id) {
    checkNotNull(client, message: "Can't create feed w/o a client");
    checkNotNull(id, message: "Can't create feed w/o an ID");
  }

  String get slug => id.slug;

  String get userID => id.userID;

  Future<Activity> addActivity(Activity activity) {
    return client.addActivity(id, activity).then((response) async {
      return Activity.fromJson(await response.body.json());
    });
  }

  Future<List<Activity>> addActivities(List<Activity> activity) {
    return client.addActivities(id, activity).then((response) async {
      var list = List.from(await response.body.json());
      return list.map((e) => Activity.fromJson(e)).toList();
    });
  }
}
