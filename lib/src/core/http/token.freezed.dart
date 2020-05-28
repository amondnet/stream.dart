// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(String token) {
    return _Token(
      token,
    );
  }
}

// ignore: unused_element
const $Token = _$TokenTearOff();

mixin _$Token {
  String get token;

  $TokenCopyWith<Token> get copyWith;
}

abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call({String token});
}

class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_Token(
      token == freezed ? _value.token : token as String,
    ));
  }
}

class _$_Token extends _Token {
  _$_Token(this.token)
      : assert(token != null),
        super._();

  @override
  final String token;

  @override
  String toString() {
    return 'Token(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);
}

abstract class _Token extends Token {
  _Token._() : super._();
  factory _Token(String token) = _$_Token;

  @override
  String get token;
  @override
  _$TokenCopyWith<_Token> get copyWith;
}
