import 'package:stream/src/core/http/token.dart';

class CloudClient {
  final Token token;
  final String userID;
  final Stream stream;

  CloudClient(this.token, this.userID, this.stream);

  T getHTTPClientImplementation<T>() {
    return stream.getHTTPClientImplementation();
  }

  // TODO: add personalized feed versions
  CloudFlatFeed flatFeed(String slug) {
    return flatFeed(slug, userID);
  }
}
