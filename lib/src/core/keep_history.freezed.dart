// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'keep_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$KeepHistoryTearOff {
  const _$KeepHistoryTearOff();

  _KeepHistory call(bool flag) {
    return _KeepHistory(
      flag,
    );
  }

  YES yes([bool flag = true]) {
    return YES(
      flag,
    );
  }

  NO no([bool flag = false]) {
    return NO(
      flag,
    );
  }
}

// ignore: unused_element
const $KeepHistory = _$KeepHistoryTearOff();

mixin _$KeepHistory {
  bool get flag;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool flag), {
    @required Result yes(bool flag),
    @required Result no(bool flag),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool flag), {
    Result yes(bool flag),
    Result no(bool flag),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_KeepHistory value), {
    @required Result yes(YES value),
    @required Result no(NO value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_KeepHistory value), {
    Result yes(YES value),
    Result no(NO value),
    @required Result orElse(),
  });

  $KeepHistoryCopyWith<KeepHistory> get copyWith;
}

abstract class $KeepHistoryCopyWith<$Res> {
  factory $KeepHistoryCopyWith(
          KeepHistory value, $Res Function(KeepHistory) then) =
      _$KeepHistoryCopyWithImpl<$Res>;
  $Res call({bool flag});
}

class _$KeepHistoryCopyWithImpl<$Res> implements $KeepHistoryCopyWith<$Res> {
  _$KeepHistoryCopyWithImpl(this._value, this._then);

  final KeepHistory _value;
  // ignore: unused_field
  final $Res Function(KeepHistory) _then;

  @override
  $Res call({
    Object flag = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed ? _value.flag : flag as bool,
    ));
  }
}

abstract class _$KeepHistoryCopyWith<$Res>
    implements $KeepHistoryCopyWith<$Res> {
  factory _$KeepHistoryCopyWith(
          _KeepHistory value, $Res Function(_KeepHistory) then) =
      __$KeepHistoryCopyWithImpl<$Res>;
  @override
  $Res call({bool flag});
}

class __$KeepHistoryCopyWithImpl<$Res> extends _$KeepHistoryCopyWithImpl<$Res>
    implements _$KeepHistoryCopyWith<$Res> {
  __$KeepHistoryCopyWithImpl(
      _KeepHistory _value, $Res Function(_KeepHistory) _then)
      : super(_value, (v) => _then(v as _KeepHistory));

  @override
  _KeepHistory get _value => super._value as _KeepHistory;

  @override
  $Res call({
    Object flag = freezed,
  }) {
    return _then(_KeepHistory(
      flag == freezed ? _value.flag : flag as bool,
    ));
  }
}

class _$_KeepHistory extends _KeepHistory {
  _$_KeepHistory(this.flag)
      : assert(flag != null),
        super._();

  @override
  final bool flag;

  @override
  String toString() {
    return 'KeepHistory(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeepHistory &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flag);

  @override
  _$KeepHistoryCopyWith<_KeepHistory> get copyWith =>
      __$KeepHistoryCopyWithImpl<_KeepHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool flag), {
    @required Result yes(bool flag),
    @required Result no(bool flag),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return $default(flag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool flag), {
    Result yes(bool flag),
    Result no(bool flag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_KeepHistory value), {
    @required Result yes(YES value),
    @required Result no(NO value),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_KeepHistory value), {
    Result yes(YES value),
    Result no(NO value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _KeepHistory extends KeepHistory {
  _KeepHistory._() : super._();
  factory _KeepHistory(bool flag) = _$_KeepHistory;

  @override
  bool get flag;
  @override
  _$KeepHistoryCopyWith<_KeepHistory> get copyWith;
}

abstract class $YESCopyWith<$Res> implements $KeepHistoryCopyWith<$Res> {
  factory $YESCopyWith(YES value, $Res Function(YES) then) =
      _$YESCopyWithImpl<$Res>;
  @override
  $Res call({bool flag});
}

class _$YESCopyWithImpl<$Res> extends _$KeepHistoryCopyWithImpl<$Res>
    implements $YESCopyWith<$Res> {
  _$YESCopyWithImpl(YES _value, $Res Function(YES) _then)
      : super(_value, (v) => _then(v as YES));

  @override
  YES get _value => super._value as YES;

  @override
  $Res call({
    Object flag = freezed,
  }) {
    return _then(YES(
      flag == freezed ? _value.flag : flag as bool,
    ));
  }
}

class _$YES extends YES {
  _$YES([this.flag = true])
      : assert(flag != null),
        super._();

  @JsonKey(defaultValue: true)
  @override
  final bool flag;

  @override
  String toString() {
    return 'KeepHistory.yes(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is YES &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flag);

  @override
  $YESCopyWith<YES> get copyWith => _$YESCopyWithImpl<YES>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool flag), {
    @required Result yes(bool flag),
    @required Result no(bool flag),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return yes(flag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool flag), {
    Result yes(bool flag),
    Result no(bool flag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yes != null) {
      return yes(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_KeepHistory value), {
    @required Result yes(YES value),
    @required Result no(NO value),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return yes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_KeepHistory value), {
    Result yes(YES value),
    Result no(NO value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yes != null) {
      return yes(this);
    }
    return orElse();
  }
}

abstract class YES extends KeepHistory {
  YES._() : super._();
  factory YES([bool flag]) = _$YES;

  @override
  bool get flag;
  @override
  $YESCopyWith<YES> get copyWith;
}

abstract class $NOCopyWith<$Res> implements $KeepHistoryCopyWith<$Res> {
  factory $NOCopyWith(NO value, $Res Function(NO) then) =
      _$NOCopyWithImpl<$Res>;
  @override
  $Res call({bool flag});
}

class _$NOCopyWithImpl<$Res> extends _$KeepHistoryCopyWithImpl<$Res>
    implements $NOCopyWith<$Res> {
  _$NOCopyWithImpl(NO _value, $Res Function(NO) _then)
      : super(_value, (v) => _then(v as NO));

  @override
  NO get _value => super._value as NO;

  @override
  $Res call({
    Object flag = freezed,
  }) {
    return _then(NO(
      flag == freezed ? _value.flag : flag as bool,
    ));
  }
}

class _$NO extends NO {
  _$NO([this.flag = false])
      : assert(flag != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool flag;

  @override
  String toString() {
    return 'KeepHistory.no(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NO &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flag);

  @override
  $NOCopyWith<NO> get copyWith => _$NOCopyWithImpl<NO>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool flag), {
    @required Result yes(bool flag),
    @required Result no(bool flag),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return no(flag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool flag), {
    Result yes(bool flag),
    Result no(bool flag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (no != null) {
      return no(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_KeepHistory value), {
    @required Result yes(YES value),
    @required Result no(NO value),
  }) {
    assert($default != null);
    assert(yes != null);
    assert(no != null);
    return no(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_KeepHistory value), {
    Result yes(YES value),
    Result no(NO value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (no != null) {
      return no(this);
    }
    return orElse();
  }
}

abstract class NO extends KeepHistory {
  NO._() : super._();
  factory NO([bool flag]) = _$NO;

  @override
  bool get flag;
  @override
  $NOCopyWith<NO> get copyWith;
}
