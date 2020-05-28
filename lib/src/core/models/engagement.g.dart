// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Engagement> _$engagementSerializer = new _$EngagementSerializer();

class _$EngagementSerializer implements StructuredSerializer<Engagement> {
  @override
  final Iterable<Type> types = const [Engagement, _$Engagement];
  @override
  final String wireName = 'Engagement';

  @override
  Iterable<Object> serialize(Serializers serializers, Engagement object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'feedID',
      serializers.serialize(object.feedID,
          specifiedType: const FullType(String)),
      'userData',
      serializers.serialize(object.userData,
          specifiedType: const FullType(UserData)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(Content)),
      'boost',
      serializers.serialize(object.boost, specifiedType: const FullType(int)),
      'position',
      serializers.serialize(object.position,
          specifiedType: const FullType(int)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'features',
      serializers.serialize(object.features,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Feature)])),
      'trackedAt',
      serializers.serialize(object.trackedAt,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Engagement deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EngagementBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'feedID':
          result.feedID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserData)) as UserData);
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content;
          break;
        case 'boost':
          result.boost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'features':
          result.features.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Feature)]))
              as BuiltList<Object>);
          break;
        case 'trackedAt':
          result.trackedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Engagement extends Engagement {
  @override
  final String feedID;
  @override
  final UserData userData;
  @override
  final String label;
  @override
  final Content content;
  @override
  final int boost;
  @override
  final int position;
  @override
  final String location;
  @override
  final BuiltList<Feature> features;
  @override
  final DateTime trackedAt;

  factory _$Engagement([void Function(EngagementBuilder) updates]) =>
      (new EngagementBuilder()..update(updates)).build();

  _$Engagement._(
      {this.feedID,
      this.userData,
      this.label,
      this.content,
      this.boost,
      this.position,
      this.location,
      this.features,
      this.trackedAt})
      : super._() {
    if (feedID == null) {
      throw new BuiltValueNullFieldError('Engagement', 'feedID');
    }
    if (userData == null) {
      throw new BuiltValueNullFieldError('Engagement', 'userData');
    }
    if (label == null) {
      throw new BuiltValueNullFieldError('Engagement', 'label');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('Engagement', 'content');
    }
    if (boost == null) {
      throw new BuiltValueNullFieldError('Engagement', 'boost');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError('Engagement', 'position');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Engagement', 'location');
    }
    if (features == null) {
      throw new BuiltValueNullFieldError('Engagement', 'features');
    }
    if (trackedAt == null) {
      throw new BuiltValueNullFieldError('Engagement', 'trackedAt');
    }
  }

  @override
  Engagement rebuild(void Function(EngagementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EngagementBuilder toBuilder() => new EngagementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Engagement &&
        feedID == other.feedID &&
        userData == other.userData &&
        label == other.label &&
        content == other.content &&
        boost == other.boost &&
        position == other.position &&
        location == other.location &&
        features == other.features &&
        trackedAt == other.trackedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, feedID.hashCode), userData.hashCode),
                                label.hashCode),
                            content.hashCode),
                        boost.hashCode),
                    position.hashCode),
                location.hashCode),
            features.hashCode),
        trackedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Engagement')
          ..add('feedID', feedID)
          ..add('userData', userData)
          ..add('label', label)
          ..add('content', content)
          ..add('boost', boost)
          ..add('position', position)
          ..add('location', location)
          ..add('features', features)
          ..add('trackedAt', trackedAt))
        .toString();
  }
}

class EngagementBuilder implements Builder<Engagement, EngagementBuilder> {
  _$Engagement _$v;

  String _feedID;
  String get feedID => _$this._feedID;
  set feedID(String feedID) => _$this._feedID = feedID;

  UserDataBuilder _userData;
  UserDataBuilder get userData => _$this._userData ??= new UserDataBuilder();
  set userData(UserDataBuilder userData) => _$this._userData = userData;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  Content _content;
  Content get content => _$this._content;
  set content(Content content) => _$this._content = content;

  int _boost;
  int get boost => _$this._boost;
  set boost(int boost) => _$this._boost = boost;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  ListBuilder<Feature> _features;
  ListBuilder<Feature> get features =>
      _$this._features ??= new ListBuilder<Feature>();
  set features(ListBuilder<Feature> features) => _$this._features = features;

  DateTime _trackedAt;
  DateTime get trackedAt => _$this._trackedAt;
  set trackedAt(DateTime trackedAt) => _$this._trackedAt = trackedAt;

  EngagementBuilder();

  EngagementBuilder get _$this {
    if (_$v != null) {
      _feedID = _$v.feedID;
      _userData = _$v.userData?.toBuilder();
      _label = _$v.label;
      _content = _$v.content;
      _boost = _$v.boost;
      _position = _$v.position;
      _location = _$v.location;
      _features = _$v.features?.toBuilder();
      _trackedAt = _$v.trackedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Engagement other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Engagement;
  }

  @override
  void update(void Function(EngagementBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Engagement build() {
    _$Engagement _$result;
    try {
      _$result = _$v ??
          new _$Engagement._(
              feedID: feedID,
              userData: userData.build(),
              label: label,
              content: content,
              boost: boost,
              position: position,
              location: location,
              features: features.build(),
              trackedAt: trackedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userData';
        userData.build();

        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Engagement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
