import 'dart:convert';

import 'package:stream/src/core/models/activity.dart';
import 'package:test/test.dart';

void main() {
  String actorID;

  group('cloud feed ', () {
    setUp(() async {});

    test('addActivity', () async {
      var request = ActivityRequest([Activity()]);
      var json = jsonEncode(request);

      print(json);
    });
  });
}
