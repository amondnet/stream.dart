// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestTearOff {
  const _$RequestTearOff();

  _Request call(Token token, Uri url, Method method,
      [@nullable RequestBody body, @nullable Map<String, String> query]) {
    return _Request(
      token,
      url,
      method,
      body,
      query,
    );
  }
}

// ignore: unused_element
const $Request = _$RequestTearOff();

mixin _$Request {
  Token get token;
  Uri get url;
  Method get method;
  @nullable
  RequestBody get body;
  @nullable
  Map<String, String> get query;

  $RequestCopyWith<Request> get copyWith;
}

abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {Token token,
      Uri url,
      Method method,
      @nullable RequestBody body,
      @nullable Map<String, String> query});

  $TokenCopyWith<$Res> get token;
  $RequestBodyCopyWith<$Res> get body;
}

class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object token = freezed,
    Object url = freezed,
    Object method = freezed,
    Object body = freezed,
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as Token,
      url: url == freezed ? _value.url : url as Uri,
      method: method == freezed ? _value.method : method as Method,
      body: body == freezed ? _value.body : body as RequestBody,
      query: query == freezed ? _value.query : query as Map<String, String>,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    if (_value.token == null) {
      return null;
    }
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }

  @override
  $RequestBodyCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $RequestBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {Token token,
      Uri url,
      Method method,
      @nullable RequestBody body,
      @nullable Map<String, String> query});

  @override
  $TokenCopyWith<$Res> get token;
  @override
  $RequestBodyCopyWith<$Res> get body;
}

class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object token = freezed,
    Object url = freezed,
    Object method = freezed,
    Object body = freezed,
    Object query = freezed,
  }) {
    return _then(_Request(
      token == freezed ? _value.token : token as Token,
      url == freezed ? _value.url : url as Uri,
      method == freezed ? _value.method : method as Method,
      body == freezed ? _value.body : body as RequestBody,
      query == freezed ? _value.query : query as Map<String, String>,
    ));
  }
}

class _$_Request extends _Request {
  _$_Request(this.token, this.url, this.method,
      [@nullable this.body, @nullable this.query])
      : assert(token != null),
        assert(url != null),
        assert(method != null),
        super._();

  @override
  final Token token;
  @override
  final Uri url;
  @override
  final Method method;
  @override
  @nullable
  final RequestBody body;
  @override
  @nullable
  final Map<String, String> query;

  @override
  String toString() {
    return 'Request(token: $token, url: $url, method: $method, body: $body, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(query);

  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request extends Request {
  _Request._() : super._();
  factory _Request(Token token, Uri url, Method method,
      [@nullable RequestBody body,
      @nullable Map<String, String> query]) = _$_Request;

  @override
  Token get token;
  @override
  Uri get url;
  @override
  Method get method;
  @override
  @nullable
  RequestBody get body;
  @override
  @nullable
  Map<String, String> get query;
  @override
  _$RequestCopyWith<_Request> get copyWith;
}
