import 'package:restio/restio.dart';
import 'package:stream/stream.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Restio awesome;

    setUp(() {
      awesome = Restio(http2: true);
    });

    test('First Test', () async {
      final response =
          await awesome.newCall(Request.get('https://naver.com')).execute();
    });
  });
}
