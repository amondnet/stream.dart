import 'package:quiver/check.dart';
import 'package:stream/src/core/http/response.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/feed_id.dart';

import 'cloud_client.dart';

class CloudFeed {
  final CloudClient client;
  final FeedID id;

  CloudFeed(this.client, this.id) {
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

  Future<List<Activity>> addActivities(List<Activity> activities) {
    return client.addActivities(id, activities).then((response) async {
      final list = List.from(await response.body.json());
      return list.map((e) => Activity.fromJson(e));
    });
  }
}
