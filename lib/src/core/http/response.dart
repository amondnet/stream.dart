import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restio/restio.dart';

// name: Response
part 'response.freezed.dart';

@freezed
abstract class Response implements _$Response {
  Response._();

  factory Response(int code, ResponseBody body) = _Response;
}
