// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResponseTearOff {
  const _$ResponseTearOff();

  _Response call(int code, ResponseBody body) {
    return _Response(
      code,
      body,
    );
  }
}

// ignore: unused_element
const $Response = _$ResponseTearOff();

mixin _$Response {
  int get code;
  ResponseBody get body;

  $ResponseCopyWith<Response> get copyWith;
}

abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call({int code, ResponseBody body});
}

class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object code = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      body: body == freezed ? _value.body : body as ResponseBody,
    ));
  }
}

abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, ResponseBody body});
}

class __$ResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;

  @override
  $Res call({
    Object code = freezed,
    Object body = freezed,
  }) {
    return _then(_Response(
      code == freezed ? _value.code : code as int,
      body == freezed ? _value.body : body as ResponseBody,
    ));
  }
}

class _$_Response extends _Response {
  _$_Response(this.code, this.body)
      : assert(code != null),
        assert(body != null),
        super._();

  @override
  final int code;
  @override
  final ResponseBody body;

  @override
  String toString() {
    return 'Response(code: $code, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(body);

  @override
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);
}

abstract class _Response extends Response {
  _Response._() : super._();
  factory _Response(int code, ResponseBody body) = _$_Response;

  @override
  int get code;
  @override
  ResponseBody get body;
  @override
  _$ResponseCopyWith<_Response> get copyWith;
}
