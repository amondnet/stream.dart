// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegionTearOff {
  const _$RegionTearOff();

  _Region call(String region) {
    return _Region(
      region,
    );
  }
}

// ignore: unused_element
const $Region = _$RegionTearOff();

mixin _$Region {
  String get region;

  $RegionCopyWith<Region> get copyWith;
}

abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res>;
  $Res call({String region});
}

class _$RegionCopyWithImpl<$Res> implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  final Region _value;
  // ignore: unused_field
  final $Res Function(Region) _then;

  @override
  $Res call({
    Object region = freezed,
  }) {
    return _then(_value.copyWith(
      region: region == freezed ? _value.region : region as String,
    ));
  }
}

abstract class _$RegionCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$RegionCopyWith(_Region value, $Res Function(_Region) then) =
      __$RegionCopyWithImpl<$Res>;
  @override
  $Res call({String region});
}

class __$RegionCopyWithImpl<$Res> extends _$RegionCopyWithImpl<$Res>
    implements _$RegionCopyWith<$Res> {
  __$RegionCopyWithImpl(_Region _value, $Res Function(_Region) _then)
      : super(_value, (v) => _then(v as _Region));

  @override
  _Region get _value => super._value as _Region;

  @override
  $Res call({
    Object region = freezed,
  }) {
    return _then(_Region(
      region == freezed ? _value.region : region as String,
    ));
  }
}

class _$_Region extends _Region {
  _$_Region(this.region)
      : assert(region != null),
        super._();

  @override
  final String region;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Region &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(region);

  @override
  _$RegionCopyWith<_Region> get copyWith =>
      __$RegionCopyWithImpl<_Region>(this, _$identity);
}

abstract class _Region extends Region {
  _Region._() : super._();
  factory _Region(String region) = _$_Region;

  @override
  String get region;
  @override
  _$RegionCopyWith<_Region> get copyWith;
}
