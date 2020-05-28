import 'request.dart';
import 'response.dart';

abstract class HTTPClient {
  T getImplementation<T>();

  Future<Response> execute(Request request);
}
