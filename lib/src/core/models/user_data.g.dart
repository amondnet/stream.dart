// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserData> _$userDataSerializer = new _$UserDataSerializer();

class _$UserDataSerializer implements StructuredSerializer<UserData> {
  @override
  final Iterable<Type> types = const [UserData, _$UserData];
  @override
  final String wireName = 'UserData';

  @override
  Iterable<Object> serialize(Serializers serializers, UserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'alias',
      serializers.serialize(object.alias,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserData extends UserData {
  @override
  final String id;
  @override
  final String alias;

  factory _$UserData([void Function(UserDataBuilder) updates]) =>
      (new UserDataBuilder()..update(updates)).build();

  _$UserData._({this.id, this.alias}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('UserData', 'id');
    }
    if (alias == null) {
      throw new BuiltValueNullFieldError('UserData', 'alias');
    }
  }

  @override
  UserData rebuild(void Function(UserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataBuilder toBuilder() => new UserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserData && id == other.id && alias == other.alias;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), alias.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserData')
          ..add('id', id)
          ..add('alias', alias))
        .toString();
  }
}

class UserDataBuilder implements Builder<UserData, UserDataBuilder> {
  _$UserData _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _alias;
  String get alias => _$this._alias;
  set alias(String alias) => _$this._alias = alias;

  UserDataBuilder();

  UserDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _alias = _$v.alias;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserData;
  }

  @override
  void update(void Function(UserDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserData build() {
    final _$result = _$v ?? new _$UserData._(id: id, alias: alias);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
