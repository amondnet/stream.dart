// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResponseTearOff {
  const _$ResponseTearOff();

  _Response call(int code, Stream<List<int>> data) {
    return _Response(
      code,
      data,
    );
  }
}

// ignore: unused_element
const $Response = _$ResponseTearOff();

mixin _$Response {
  int get code;
  Stream<List<int>> get data;

  $ResponseCopyWith<Response> get copyWith;
}

abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call({int code, Stream<List<int>> data});
}

class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object code = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      data: data == freezed ? _value.data : data as Stream<List<int>>,
    ));
  }
}

abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, Stream<List<int>> data});
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
    Object data = freezed,
  }) {
    return _then(_Response(
      code == freezed ? _value.code : code as int,
      data == freezed ? _value.data : data as Stream<List<int>>,
    ));
  }
}

class _$_Response extends _Response {
  _$_Response(this.code, this.data)
      : assert(code != null),
        assert(data != null),
        super._();

  @override
  final int code;
  @override
  final Stream<List<int>> data;

  @override
  String toString() {
    return 'Response(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);
}

abstract class _Response extends Response {
  _Response._() : super._();
  factory _Response(int code, Stream<List<int>> data) = _$_Response;

  @override
  int get code;
  @override
  Stream<List<int>> get data;
  @override
  _$ResponseCopyWith<_Response> get copyWith;
}
