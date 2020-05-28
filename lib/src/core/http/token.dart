import 'package:freezed_annotation/freezed_annotation.dart';

// name: Token
part 'token.freezed.dart';

@freezed
abstract class Token implements _$Token {
  Token._();
  factory Token(String token) = _Token;
}
