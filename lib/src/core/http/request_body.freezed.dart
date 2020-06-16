// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestBodyTypeTearOff {
  const _$RequestBodyTypeTearOff();

  _RequestBodyType call(String contentType) {
    return _RequestBodyType(
      contentType,
    );
  }

  JSON_TYPE json([String contentType = 'application/json']) {
    return JSON_TYPE(
      contentType,
    );
  }

  MULTI_PART_TYPE multiPart([String contentType = 'multipart/form-data']) {
    return MULTI_PART_TYPE(
      contentType,
    );
  }
}

// ignore: unused_element
const $RequestBodyType = _$RequestBodyTypeTearOff();

mixin _$RequestBodyType {
  String get contentType;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String contentType), {
    @required Result json(String contentType),
    @required Result multiPart(String contentType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String contentType), {
    Result json(String contentType),
    Result multiPart(String contentType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RequestBodyType value), {
    @required Result json(JSON_TYPE value),
    @required Result multiPart(MULTI_PART_TYPE value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RequestBodyType value), {
    Result json(JSON_TYPE value),
    Result multiPart(MULTI_PART_TYPE value),
    @required Result orElse(),
  });

  $RequestBodyTypeCopyWith<RequestBodyType> get copyWith;
}

abstract class $RequestBodyTypeCopyWith<$Res> {
  factory $RequestBodyTypeCopyWith(
          RequestBodyType value, $Res Function(RequestBodyType) then) =
      _$RequestBodyTypeCopyWithImpl<$Res>;
  $Res call({String contentType});
}

class _$RequestBodyTypeCopyWithImpl<$Res>
    implements $RequestBodyTypeCopyWith<$Res> {
  _$RequestBodyTypeCopyWithImpl(this._value, this._then);

  final RequestBodyType _value;
  // ignore: unused_field
  final $Res Function(RequestBodyType) _then;

  @override
  $Res call({
    Object contentType = freezed,
  }) {
    return _then(_value.copyWith(
      contentType:
          contentType == freezed ? _value.contentType : contentType as String,
    ));
  }
}

abstract class _$RequestBodyTypeCopyWith<$Res>
    implements $RequestBodyTypeCopyWith<$Res> {
  factory _$RequestBodyTypeCopyWith(
          _RequestBodyType value, $Res Function(_RequestBodyType) then) =
      __$RequestBodyTypeCopyWithImpl<$Res>;
  @override
  $Res call({String contentType});
}

class __$RequestBodyTypeCopyWithImpl<$Res>
    extends _$RequestBodyTypeCopyWithImpl<$Res>
    implements _$RequestBodyTypeCopyWith<$Res> {
  __$RequestBodyTypeCopyWithImpl(
      _RequestBodyType _value, $Res Function(_RequestBodyType) _then)
      : super(_value, (v) => _then(v as _RequestBodyType));

  @override
  _RequestBodyType get _value => super._value as _RequestBodyType;

  @override
  $Res call({
    Object contentType = freezed,
  }) {
    return _then(_RequestBodyType(
      contentType == freezed ? _value.contentType : contentType as String,
    ));
  }
}

class _$_RequestBodyType extends _RequestBodyType {
  const _$_RequestBodyType(this.contentType)
      : assert(contentType != null),
        super._();

  @override
  final String contentType;

  @override
  String toString() {
    return 'RequestBodyType(contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestBodyType &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contentType);

  @override
  _$RequestBodyTypeCopyWith<_RequestBodyType> get copyWith =>
      __$RequestBodyTypeCopyWithImpl<_RequestBodyType>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String contentType), {
    @required Result json(String contentType),
    @required Result multiPart(String contentType),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return $default(contentType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String contentType), {
    Result json(String contentType),
    Result multiPart(String contentType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RequestBodyType value), {
    @required Result json(JSON_TYPE value),
    @required Result multiPart(MULTI_PART_TYPE value),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RequestBodyType value), {
    Result json(JSON_TYPE value),
    Result multiPart(MULTI_PART_TYPE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RequestBodyType extends RequestBodyType {
  const _RequestBodyType._() : super._();
  const factory _RequestBodyType(String contentType) = _$_RequestBodyType;

  @override
  String get contentType;
  @override
  _$RequestBodyTypeCopyWith<_RequestBodyType> get copyWith;
}

abstract class $JSON_TYPECopyWith<$Res>
    implements $RequestBodyTypeCopyWith<$Res> {
  factory $JSON_TYPECopyWith(JSON_TYPE value, $Res Function(JSON_TYPE) then) =
      _$JSON_TYPECopyWithImpl<$Res>;
  @override
  $Res call({String contentType});
}

class _$JSON_TYPECopyWithImpl<$Res> extends _$RequestBodyTypeCopyWithImpl<$Res>
    implements $JSON_TYPECopyWith<$Res> {
  _$JSON_TYPECopyWithImpl(JSON_TYPE _value, $Res Function(JSON_TYPE) _then)
      : super(_value, (v) => _then(v as JSON_TYPE));

  @override
  JSON_TYPE get _value => super._value as JSON_TYPE;

  @override
  $Res call({
    Object contentType = freezed,
  }) {
    return _then(JSON_TYPE(
      contentType == freezed ? _value.contentType : contentType as String,
    ));
  }
}

class _$JSON_TYPE extends JSON_TYPE {
  const _$JSON_TYPE([this.contentType = 'application/json'])
      : assert(contentType != null),
        super._();

  @JsonKey(defaultValue: 'application/json')
  @override
  final String contentType;

  @override
  String toString() {
    return 'RequestBodyType.json(contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JSON_TYPE &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contentType);

  @override
  $JSON_TYPECopyWith<JSON_TYPE> get copyWith =>
      _$JSON_TYPECopyWithImpl<JSON_TYPE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String contentType), {
    @required Result json(String contentType),
    @required Result multiPart(String contentType),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return json(contentType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String contentType), {
    Result json(String contentType),
    Result multiPart(String contentType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (json != null) {
      return json(contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RequestBodyType value), {
    @required Result json(JSON_TYPE value),
    @required Result multiPart(MULTI_PART_TYPE value),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return json(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RequestBodyType value), {
    Result json(JSON_TYPE value),
    Result multiPart(MULTI_PART_TYPE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class JSON_TYPE extends RequestBodyType {
  const JSON_TYPE._() : super._();
  const factory JSON_TYPE([String contentType]) = _$JSON_TYPE;

  @override
  String get contentType;
  @override
  $JSON_TYPECopyWith<JSON_TYPE> get copyWith;
}

abstract class $MULTI_PART_TYPECopyWith<$Res>
    implements $RequestBodyTypeCopyWith<$Res> {
  factory $MULTI_PART_TYPECopyWith(
          MULTI_PART_TYPE value, $Res Function(MULTI_PART_TYPE) then) =
      _$MULTI_PART_TYPECopyWithImpl<$Res>;
  @override
  $Res call({String contentType});
}

class _$MULTI_PART_TYPECopyWithImpl<$Res>
    extends _$RequestBodyTypeCopyWithImpl<$Res>
    implements $MULTI_PART_TYPECopyWith<$Res> {
  _$MULTI_PART_TYPECopyWithImpl(
      MULTI_PART_TYPE _value, $Res Function(MULTI_PART_TYPE) _then)
      : super(_value, (v) => _then(v as MULTI_PART_TYPE));

  @override
  MULTI_PART_TYPE get _value => super._value as MULTI_PART_TYPE;

  @override
  $Res call({
    Object contentType = freezed,
  }) {
    return _then(MULTI_PART_TYPE(
      contentType == freezed ? _value.contentType : contentType as String,
    ));
  }
}

class _$MULTI_PART_TYPE extends MULTI_PART_TYPE {
  const _$MULTI_PART_TYPE([this.contentType = 'multipart/form-data'])
      : assert(contentType != null),
        super._();

  @JsonKey(defaultValue: 'multipart/form-data')
  @override
  final String contentType;

  @override
  String toString() {
    return 'RequestBodyType.multiPart(contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MULTI_PART_TYPE &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contentType);

  @override
  $MULTI_PART_TYPECopyWith<MULTI_PART_TYPE> get copyWith =>
      _$MULTI_PART_TYPECopyWithImpl<MULTI_PART_TYPE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String contentType), {
    @required Result json(String contentType),
    @required Result multiPart(String contentType),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return multiPart(contentType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String contentType), {
    Result json(String contentType),
    Result multiPart(String contentType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiPart != null) {
      return multiPart(contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_RequestBodyType value), {
    @required Result json(JSON_TYPE value),
    @required Result multiPart(MULTI_PART_TYPE value),
  }) {
    assert($default != null);
    assert(json != null);
    assert(multiPart != null);
    return multiPart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_RequestBodyType value), {
    Result json(JSON_TYPE value),
    Result multiPart(MULTI_PART_TYPE value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiPart != null) {
      return multiPart(this);
    }
    return orElse();
  }
}

abstract class MULTI_PART_TYPE extends RequestBodyType {
  const MULTI_PART_TYPE._() : super._();
  const factory MULTI_PART_TYPE([String contentType]) = _$MULTI_PART_TYPE;

  @override
  String get contentType;
  @override
  $MULTI_PART_TYPECopyWith<MULTI_PART_TYPE> get copyWith;
}

class _$RequestBodyTearOff {
  const _$RequestBodyTearOff();

  _RequestBody call(RequestBodyType type, @nullable List<int> bytes,
      @nullable File file, @nullable String fileName, @nullable Object object) {
    return _RequestBody(
      type,
      bytes,
      file,
      fileName,
      object,
    );
  }
}

// ignore: unused_element
const $RequestBody = _$RequestBodyTearOff();

mixin _$RequestBody {
  RequestBodyType get type;
  @nullable
  List<int> get bytes;
  @nullable
  File get file;
  @nullable
  String get fileName;
  @nullable
  Object get object;

  $RequestBodyCopyWith<RequestBody> get copyWith;
}

abstract class $RequestBodyCopyWith<$Res> {
  factory $RequestBodyCopyWith(
          RequestBody value, $Res Function(RequestBody) then) =
      _$RequestBodyCopyWithImpl<$Res>;
  $Res call(
      {RequestBodyType type,
      @nullable List<int> bytes,
      @nullable File file,
      @nullable String fileName,
      @nullable Object object});

  $RequestBodyTypeCopyWith<$Res> get type;
}

class _$RequestBodyCopyWithImpl<$Res> implements $RequestBodyCopyWith<$Res> {
  _$RequestBodyCopyWithImpl(this._value, this._then);

  final RequestBody _value;
  // ignore: unused_field
  final $Res Function(RequestBody) _then;

  @override
  $Res call({
    Object type = freezed,
    Object bytes = freezed,
    Object file = freezed,
    Object fileName = freezed,
    Object object = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as RequestBodyType,
      bytes: bytes == freezed ? _value.bytes : bytes as List<int>,
      file: file == freezed ? _value.file : file as File,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      object: object == freezed ? _value.object : object,
    ));
  }

  @override
  $RequestBodyTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $RequestBodyTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

abstract class _$RequestBodyCopyWith<$Res>
    implements $RequestBodyCopyWith<$Res> {
  factory _$RequestBodyCopyWith(
          _RequestBody value, $Res Function(_RequestBody) then) =
      __$RequestBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequestBodyType type,
      @nullable List<int> bytes,
      @nullable File file,
      @nullable String fileName,
      @nullable Object object});

  @override
  $RequestBodyTypeCopyWith<$Res> get type;
}

class __$RequestBodyCopyWithImpl<$Res> extends _$RequestBodyCopyWithImpl<$Res>
    implements _$RequestBodyCopyWith<$Res> {
  __$RequestBodyCopyWithImpl(
      _RequestBody _value, $Res Function(_RequestBody) _then)
      : super(_value, (v) => _then(v as _RequestBody));

  @override
  _RequestBody get _value => super._value as _RequestBody;

  @override
  $Res call({
    Object type = freezed,
    Object bytes = freezed,
    Object file = freezed,
    Object fileName = freezed,
    Object object = freezed,
  }) {
    return _then(_RequestBody(
      type == freezed ? _value.type : type as RequestBodyType,
      bytes == freezed ? _value.bytes : bytes as List<int>,
      file == freezed ? _value.file : file as File,
      fileName == freezed ? _value.fileName : fileName as String,
      object == freezed ? _value.object : object,
    ));
  }
}

class _$_RequestBody implements _RequestBody {
  const _$_RequestBody(this.type, @nullable this.bytes, @nullable this.file,
      @nullable this.fileName, @nullable this.object)
      : assert(type != null);

  @override
  final RequestBodyType type;
  @override
  @nullable
  final List<int> bytes;
  @override
  @nullable
  final File file;
  @override
  @nullable
  final String fileName;
  @override
  @nullable
  final Object object;

  @override
  String toString() {
    return 'RequestBody(type: $type, bytes: $bytes, file: $file, fileName: $fileName, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestBody &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(bytes) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(object);

  @override
  _$RequestBodyCopyWith<_RequestBody> get copyWith =>
      __$RequestBodyCopyWithImpl<_RequestBody>(this, _$identity);
}

abstract class _RequestBody implements RequestBody {
  const factory _RequestBody(
      RequestBodyType type,
      @nullable List<int> bytes,
      @nullable File file,
      @nullable String fileName,
      @nullable Object object) = _$_RequestBody;

  @override
  RequestBodyType get type;
  @override
  @nullable
  List<int> get bytes;
  @override
  @nullable
  File get file;
  @override
  @nullable
  String get fileName;
  @override
  @nullable
  Object get object;
  @override
  _$RequestBodyCopyWith<_RequestBody> get copyWith;
}
