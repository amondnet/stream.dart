// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lookup_kind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LookupKindTearOff {
  const _$LookupKindTearOff();

  _LookupKind call(String kind) {
    return _LookupKind(
      kind,
    );
  }

  ACTIVITY activity([String kind = 'activity_id']) {
    return ACTIVITY(
      kind,
    );
  }

  ACTIVITY_WITH_DATA activityWithData([String kind = 'activity_id']) {
    return ACTIVITY_WITH_DATA(
      kind,
    );
  }

  REACTION reaction([String kind = 'reaction_id']) {
    return REACTION(
      kind,
    );
  }

  USER user([String kind = 'user_id']) {
    return USER(
      kind,
    );
  }
}

// ignore: unused_element
const $LookupKind = _$LookupKindTearOff();

mixin _$LookupKind {
  String get kind;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  });

  $LookupKindCopyWith<LookupKind> get copyWith;
}

abstract class $LookupKindCopyWith<$Res> {
  factory $LookupKindCopyWith(
          LookupKind value, $Res Function(LookupKind) then) =
      _$LookupKindCopyWithImpl<$Res>;
  $Res call({String kind});
}

class _$LookupKindCopyWithImpl<$Res> implements $LookupKindCopyWith<$Res> {
  _$LookupKindCopyWithImpl(this._value, this._then);

  final LookupKind _value;
  // ignore: unused_field
  final $Res Function(LookupKind) _then;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed ? _value.kind : kind as String,
    ));
  }
}

abstract class _$LookupKindCopyWith<$Res> implements $LookupKindCopyWith<$Res> {
  factory _$LookupKindCopyWith(
          _LookupKind value, $Res Function(_LookupKind) then) =
      __$LookupKindCopyWithImpl<$Res>;
  @override
  $Res call({String kind});
}

class __$LookupKindCopyWithImpl<$Res> extends _$LookupKindCopyWithImpl<$Res>
    implements _$LookupKindCopyWith<$Res> {
  __$LookupKindCopyWithImpl(
      _LookupKind _value, $Res Function(_LookupKind) _then)
      : super(_value, (v) => _then(v as _LookupKind));

  @override
  _LookupKind get _value => super._value as _LookupKind;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(_LookupKind(
      kind == freezed ? _value.kind : kind as String,
    ));
  }
}

class _$_LookupKind extends _LookupKind {
  _$_LookupKind(this.kind)
      : assert(kind != null),
        super._();

  @override
  final String kind;

  @override
  String toString() {
    return 'LookupKind(kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LookupKind &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kind);

  @override
  _$LookupKindCopyWith<_LookupKind> get copyWith =>
      __$LookupKindCopyWithImpl<_LookupKind>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return $default(kind);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LookupKind extends LookupKind {
  _LookupKind._() : super._();
  factory _LookupKind(String kind) = _$_LookupKind;

  @override
  String get kind;
  @override
  _$LookupKindCopyWith<_LookupKind> get copyWith;
}

abstract class $ACTIVITYCopyWith<$Res> implements $LookupKindCopyWith<$Res> {
  factory $ACTIVITYCopyWith(ACTIVITY value, $Res Function(ACTIVITY) then) =
      _$ACTIVITYCopyWithImpl<$Res>;
  @override
  $Res call({String kind});
}

class _$ACTIVITYCopyWithImpl<$Res> extends _$LookupKindCopyWithImpl<$Res>
    implements $ACTIVITYCopyWith<$Res> {
  _$ACTIVITYCopyWithImpl(ACTIVITY _value, $Res Function(ACTIVITY) _then)
      : super(_value, (v) => _then(v as ACTIVITY));

  @override
  ACTIVITY get _value => super._value as ACTIVITY;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(ACTIVITY(
      kind == freezed ? _value.kind : kind as String,
    ));
  }
}

class _$ACTIVITY extends ACTIVITY {
  _$ACTIVITY([this.kind = 'activity_id'])
      : assert(kind != null),
        super._();

  @JsonKey(defaultValue: 'activity_id')
  @override
  final String kind;

  @override
  String toString() {
    return 'LookupKind.activity(kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ACTIVITY &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kind);

  @override
  $ACTIVITYCopyWith<ACTIVITY> get copyWith =>
      _$ACTIVITYCopyWithImpl<ACTIVITY>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return activity(kind);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activity != null) {
      return activity(kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return activity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activity != null) {
      return activity(this);
    }
    return orElse();
  }
}

abstract class ACTIVITY extends LookupKind {
  ACTIVITY._() : super._();
  factory ACTIVITY([String kind]) = _$ACTIVITY;

  @override
  String get kind;
  @override
  $ACTIVITYCopyWith<ACTIVITY> get copyWith;
}

abstract class $ACTIVITY_WITH_DATACopyWith<$Res>
    implements $LookupKindCopyWith<$Res> {
  factory $ACTIVITY_WITH_DATACopyWith(
          ACTIVITY_WITH_DATA value, $Res Function(ACTIVITY_WITH_DATA) then) =
      _$ACTIVITY_WITH_DATACopyWithImpl<$Res>;
  @override
  $Res call({String kind});
}

class _$ACTIVITY_WITH_DATACopyWithImpl<$Res>
    extends _$LookupKindCopyWithImpl<$Res>
    implements $ACTIVITY_WITH_DATACopyWith<$Res> {
  _$ACTIVITY_WITH_DATACopyWithImpl(
      ACTIVITY_WITH_DATA _value, $Res Function(ACTIVITY_WITH_DATA) _then)
      : super(_value, (v) => _then(v as ACTIVITY_WITH_DATA));

  @override
  ACTIVITY_WITH_DATA get _value => super._value as ACTIVITY_WITH_DATA;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(ACTIVITY_WITH_DATA(
      kind == freezed ? _value.kind : kind as String,
    ));
  }
}

class _$ACTIVITY_WITH_DATA extends ACTIVITY_WITH_DATA {
  _$ACTIVITY_WITH_DATA([this.kind = 'activity_id'])
      : assert(kind != null),
        super._();

  @JsonKey(defaultValue: 'activity_id')
  @override
  final String kind;

  @override
  String toString() {
    return 'LookupKind.activityWithData(kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ACTIVITY_WITH_DATA &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kind);

  @override
  $ACTIVITY_WITH_DATACopyWith<ACTIVITY_WITH_DATA> get copyWith =>
      _$ACTIVITY_WITH_DATACopyWithImpl<ACTIVITY_WITH_DATA>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return activityWithData(kind);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activityWithData != null) {
      return activityWithData(kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return activityWithData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activityWithData != null) {
      return activityWithData(this);
    }
    return orElse();
  }
}

abstract class ACTIVITY_WITH_DATA extends LookupKind {
  ACTIVITY_WITH_DATA._() : super._();
  factory ACTIVITY_WITH_DATA([String kind]) = _$ACTIVITY_WITH_DATA;

  @override
  String get kind;
  @override
  $ACTIVITY_WITH_DATACopyWith<ACTIVITY_WITH_DATA> get copyWith;
}

abstract class $REACTIONCopyWith<$Res> implements $LookupKindCopyWith<$Res> {
  factory $REACTIONCopyWith(REACTION value, $Res Function(REACTION) then) =
      _$REACTIONCopyWithImpl<$Res>;
  @override
  $Res call({String kind});
}

class _$REACTIONCopyWithImpl<$Res> extends _$LookupKindCopyWithImpl<$Res>
    implements $REACTIONCopyWith<$Res> {
  _$REACTIONCopyWithImpl(REACTION _value, $Res Function(REACTION) _then)
      : super(_value, (v) => _then(v as REACTION));

  @override
  REACTION get _value => super._value as REACTION;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(REACTION(
      kind == freezed ? _value.kind : kind as String,
    ));
  }
}

class _$REACTION extends REACTION {
  _$REACTION([this.kind = 'reaction_id'])
      : assert(kind != null),
        super._();

  @JsonKey(defaultValue: 'reaction_id')
  @override
  final String kind;

  @override
  String toString() {
    return 'LookupKind.reaction(kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is REACTION &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kind);

  @override
  $REACTIONCopyWith<REACTION> get copyWith =>
      _$REACTIONCopyWithImpl<REACTION>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return reaction(kind);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reaction != null) {
      return reaction(kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return reaction(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reaction != null) {
      return reaction(this);
    }
    return orElse();
  }
}

abstract class REACTION extends LookupKind {
  REACTION._() : super._();
  factory REACTION([String kind]) = _$REACTION;

  @override
  String get kind;
  @override
  $REACTIONCopyWith<REACTION> get copyWith;
}

abstract class $USERCopyWith<$Res> implements $LookupKindCopyWith<$Res> {
  factory $USERCopyWith(USER value, $Res Function(USER) then) =
      _$USERCopyWithImpl<$Res>;
  @override
  $Res call({String kind});
}

class _$USERCopyWithImpl<$Res> extends _$LookupKindCopyWithImpl<$Res>
    implements $USERCopyWith<$Res> {
  _$USERCopyWithImpl(USER _value, $Res Function(USER) _then)
      : super(_value, (v) => _then(v as USER));

  @override
  USER get _value => super._value as USER;

  @override
  $Res call({
    Object kind = freezed,
  }) {
    return _then(USER(
      kind == freezed ? _value.kind : kind as String,
    ));
  }
}

class _$USER extends USER {
  _$USER([this.kind = 'user_id'])
      : assert(kind != null),
        super._();

  @JsonKey(defaultValue: 'user_id')
  @override
  final String kind;

  @override
  String toString() {
    return 'LookupKind.user(kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is USER &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kind);

  @override
  $USERCopyWith<USER> get copyWith =>
      _$USERCopyWithImpl<USER>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String kind), {
    @required Result activity(String kind),
    @required Result activityWithData(String kind),
    @required Result reaction(String kind),
    @required Result user(String kind),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return user(kind);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String kind), {
    Result activity(String kind),
    Result activityWithData(String kind),
    Result reaction(String kind),
    Result user(String kind),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LookupKind value), {
    @required Result activity(ACTIVITY value),
    @required Result activityWithData(ACTIVITY_WITH_DATA value),
    @required Result reaction(REACTION value),
    @required Result user(USER value),
  }) {
    assert($default != null);
    assert(activity != null);
    assert(activityWithData != null);
    assert(reaction != null);
    assert(user != null);
    return user(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LookupKind value), {
    Result activity(ACTIVITY value),
    Result activityWithData(ACTIVITY_WITH_DATA value),
    Result reaction(REACTION value),
    Result user(USER value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class USER extends LookupKind {
  USER._() : super._();
  factory USER([String kind]) = _$USER;

  @override
  String get kind;
  @override
  $USERCopyWith<USER> get copyWith;
}
