import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

// name: RequestBodyType
part 'request_body.freezed.dart';

@freezed
abstract class RequestBodyType implements _$RequestBodyType {
  const RequestBodyType._();

  const factory RequestBodyType(String contentType) = _RequestBodyType;

  const factory RequestBodyType.json(
      [@Default('application/json') String contentType]) = JSON_TYPE;

  const factory RequestBodyType.multiPart(
      [@Default('multipart/form-data') String contentType]) = MULTI_PART_TYPE;

  static RequestBodyType get JSON => RequestBodyType.json();

  static RequestBodyType get MULTI_PART => RequestBodyType.multiPart();
}

// name: RequestBody

@freezed
abstract class RequestBody with _$RequestBody {
  const factory RequestBody(RequestBodyType type, @nullable List<int> bytes,
      @nullable File file, @nullable String fileName) = _RequestBody;

  factory RequestBody.file(File file) =>
      RequestBody(RequestBodyType.multiPart(), null, file, null);

  factory RequestBody.fileBytes(
    String fileName,
    List<int> bytes,
  ) =>
      RequestBody(RequestBodyType.multiPart(), bytes, null, fileName);

  factory RequestBody.bytes(List<int> bytes) =>
      RequestBody(RequestBodyType.json(), bytes, null, null);
}
