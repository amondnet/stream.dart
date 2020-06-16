import 'dart:core';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:stream/src/core/http/token.dart';

import 'request_body.dart';

part 'request.freezed.dart';

enum Method { GET, POST, PUT, DELETE }
// name: Request

@freezed
abstract class Request implements _$Request {
  Request._();

  factory Request(Token token, Uri url, Method method,
      [@nullable RequestBody body,
      @nullable Map<String, String> query]) = _Request;

  factory Request.post(
      {@required Token token,
      @required Uri url,
      @required List<int> body,
      Map<String, String> query}) {
    return Request(token, url, Method.POST, RequestBody.bytes(body), query);
  }

  factory Request.postJson(
      {@required Token token,
      @required Uri url,
      @required Object body,
      Map<String, String> query}) {
    return Request(token, url, Method.POST, RequestBody.json(body), query);
  }

  factory Request.multipartPost(
      {@required Token token,
      @required Uri url,
      @required List<int> body,
      @required String fileName,
      Map<String, String> query}) {
    return Request(
        token, url, Method.POST, RequestBody.fileBytes(fileName, body), query);
  }

  factory Request.multipartPostFile(
      {@required Token token,
      @required Uri url,
      @required File file,
      Map<String, String> query}) {
    return Request(token, url, Method.POST, RequestBody.file(file), query);
  }

  factory Request.put(
      {@required Token token,
      @required Uri url,
      @required List<int> body,
      Map<String, String> query}) {
    return Request(token, url, Method.PUT, RequestBody.bytes(body), query);
  }

  factory Request.delete(
      {@required Token token, @required Uri url, Map<String, String> query}) {
    return Request(token, url, Method.DELETE, null, query);
  }

  factory Request.get(
      {@required Token token, @required Uri url, Map<String, String> query}) {
    return Request(token, url, Method.GET, null, query);
  }
}
