import 'package:freezed_annotation/freezed_annotation.dart';

// name: Response
part 'response.freezed.dart';

@freezed
abstract class Response implements _$Response {
  Response._();

  factory Response(int code, Stream<List<int>> data) = _Response;
}
