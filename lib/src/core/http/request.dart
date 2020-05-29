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
    return Request(token, url.replace(queryParameters: query), Method.POST,
        RequestBody.bytes(body));
  }

  factory Request.multipartPost(
      {@required Token token,
      @required Uri url,
      @required List<int> body,
      @required String fileName,
      Map<String, String> query}) {
    return Request(token, url.replace(queryParameters: query), Method.POST,
        RequestBody.fileBytes(fileName, body));
  }

  factory Request.multipartPostFile(
      {@required Token token,
      @required Uri url,
      @required File file,
      Map<String, String> query}) {
    return Request(token, url.replace(queryParameters: query), Method.POST,
        RequestBody.file(file));
  }

  factory Request.put(
      {@required Token token,
      @required Uri url,
      @required List<int> body,
      Map<String, String> query}) {
    return Request(token, url.replace(queryParameters: query), Method.PUT,
        RequestBody.bytes(body));
  }

  factory Request.delete(
      {@required Token token, @required Uri url, Map<String, String> query}) {
    return Request(
        token, url.replace(queryParameters: query), Method.DELETE, null);
  }

  factory Request.get(
      {@required Token token, @required Uri url, Map<String, String> query}) {
    return Request(
        token, url.replace(queryParameters: query), Method.GET, null);
  }
}
