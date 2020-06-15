import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

class ActivityMarker implements RequestOption {
  bool _allRead = false;
  bool _allSeen = false;
  Set<String> readIDs = {};
  Set<String> seenIDs = {};

  ActivityMarker allRead() {
    _allRead = true;
    return this;
  }

  ActivityMarker allSeen() {
    _allSeen = true;
    return this;
  }

  ActivityMarker read(List<String> activityIDs) {
    if (!_allRead && activityIDs != null) {
      readIDs = readIDs.union(Set.of(activityIDs));
    }
    return this;
  }

  ActivityMarker seen(Iterable<String> activityIDs) {
    if (!_allSeen && activityIDs != null) {
      seenIDs = seenIDs.union(Set.of(activityIDs));
    }
    return this;
  }

  @override
  void apply(Request builder) {
    if (_allRead) {
      builder.query['mark_read'] = 'true';
    } else if (readIDs.isNotEmpty) {
      builder.query['mark_read'] = readIDs.join(',');
    }

    if (_allSeen) {
      builder.query['mark_seen'] = 'true';
    } else if (seenIDs.isNotEmpty) {
      builder.query['mark_seen'] = seenIDs.join(',');
    }
  }
}
