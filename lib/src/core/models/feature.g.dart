// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feature> _$featureSerializer = new _$FeatureSerializer();

class _$FeatureSerializer implements StructuredSerializer<Feature> {
  @override
  final Iterable<Type> types = const [Feature, _$Feature];
  @override
  final String wireName = 'Feature';

  @override
  Iterable<Object> serialize(Serializers serializers, Feature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'group',
      serializers.serialize(object.group,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Feature deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeatureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Feature extends Feature {
  @override
  final String group;
  @override
  final String value;

  factory _$Feature([void Function(FeatureBuilder) updates]) =>
      (new FeatureBuilder()..update(updates)).build();

  _$Feature._({this.group, this.value}) : super._() {
    if (group == null) {
      throw new BuiltValueNullFieldError('Feature', 'group');
    }
    if (value == null) {
      throw new BuiltValueNullFieldError('Feature', 'value');
    }
  }

  @override
  Feature rebuild(void Function(FeatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureBuilder toBuilder() => new FeatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feature && group == other.group && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, group.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feature')
          ..add('group', group)
          ..add('value', value))
        .toString();
  }
}

class FeatureBuilder implements Builder<Feature, FeatureBuilder> {
  _$Feature _$v;

  String _group;
  String get group => _$this._group;
  set group(String group) => _$this._group = group;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  FeatureBuilder();

  FeatureBuilder get _$this {
    if (_$v != null) {
      _group = _$v.group;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feature other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feature;
  }

  @override
  void update(void Function(FeatureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Feature build() {
    final _$result = _$v ?? new _$Feature._(group: group, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
