import 'dart:io';

import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/http/request.dart';
import 'package:stream/src/core/options/request_option.dart';

class Requests {
  Requests._();

  /*
   static Request buildRequest(Uri Uri, String apiKey, Token token)
   {

     Request.
  HTTPClient.requestBuilder().Uri(Uri).token(token).addQueryParameter("api_key", apiKey);
  
  return builder;
}*/

  static Request buildGet(Uri uri, String apiKey, Token token,
      [List<RequestOption> options]) {
    return Request.get(token: token, url: uri, query: {'api_key': apiKey});
    ;
  }

  static Request buildDelete(Uri uri, String apiKey, Token token,
      [List<RequestOption> options]) {
    return Request.delete(token: token, url: uri, query: {'api_key': apiKey});
    ;
  }

  static Request buildPost(
      Uri uri, String apiKey, Token token, List<int> payload,
      [List<RequestOption> options]) {
    return Request.post(
        token: token, url: uri, query: {'api_key': apiKey}, body: payload);
    ;
  }

  static Request buildMultiPartPost(
      Uri uri, String apiKey, Token token, String fileName, List<int> payload,
      [List<RequestOption> options]) {
    return Request.multipartPost(
        token: token,
        url: uri,
        query: {'api_key': apiKey},
        fileName: fileName,
        body: payload);
  }

  static Request buildMultiPartPostFile(
      Uri uri, String apiKey, Token token, File payload,
      [List<RequestOption> options]) {
    return Request.multipartPostFile(
        token: token, url: uri, query: {'api_key': apiKey}, file: payload);
  }

  static Request buildPut(
      Uri uri, String apiKey, Token token, List<int> payload,
      [List<RequestOption> options]) {
    return Request.put(
        token: token, url: uri, query: {'api_key': apiKey}, body: payload);
    ;
  }
}
