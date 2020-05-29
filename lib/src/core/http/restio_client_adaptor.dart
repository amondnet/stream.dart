import 'package:restio/restio.dart' as restio;
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/request.dart';
import 'package:stream/src/core/http/response.dart';

import 'request_body.dart';

class RestioClientAdaptor extends HTTPClient {
  static final String userAgentTemplate = "restio stream-java2 %s v%s";
  final restio.Restio _client;

  RestioClientAdaptor([restio.Restio client])
      : _client = client ?? restio.Restio(followRedirects: false, http2: true);

  @override
  Future<Response> execute(Request request) {
    return _client
        .newCall(_buildOkHttpRequest(request))
        .execute()
        .then((response) => _buildResponse(response));
  }

  @override
  T getImplementation<T>() {
    throw _client;
  }

  restio.RequestBody _buildOkHttpRequestBody(RequestBody body) {
    return body.type.when(
      (contentType) => throw StateError('content type is not supported'),
      json: (_) => restio.RequestBody.json(body.bytes),
      multiPart: (_) {
        if (body.bytes != null) {
          return restio.MultipartBody(parts: [
            restio.Part.file(
              'file',
              body.fileName,
              restio.RequestBody.bytes(body.bytes),
            )
          ]);
        } else {
          return restio.RequestBody.file(body.file);
        }
      },
    );
  }

  restio.Request _buildOkHttpRequest(Request request) {
    //String version = Info.getProperties().getProperty(Info.VERSION);
    //String userAgent = String.format(userAgentTemplate, System.getProperty("os.name"), version);
    final header = restio.HeadersBuilder()
      ..add('Stream-Auth-Type', 'jwt')
      ..add('Authorization', request.token.toString());
    // ..add('User-Agent', userAgentTemplate)

    switch (request.method) {
      case Method.GET:
        return restio.Request.get(request.url.toString(),
            headers: header.build());
      case Method.DELETE:
        return restio.Request.delete(request.url.toString(),
            headers: header.build());
      case Method.PUT:
        return restio.Request.put(request.url.toString(),
            headers: header.build(),
            body: _buildOkHttpRequestBody(request.body));
      case Method.POST:
        return restio.Request.post(request.url.toString(),
            headers: header.build(),
            body: _buildOkHttpRequestBody(request.body));
    }
  }

  Response _buildResponse(restio.Response response) {
    // final body = response.body != null ? response.body.data : null;
    return Response(response.code, response.body);
  }
}
