import 'package:freezed_annotation/freezed_annotation.dart';

// name: LookupKind
part 'lookup_kind.freezed.dart';

@freezed
abstract class LookupKind implements _$LookupKind {
  LookupKind._();
  factory LookupKind(String kind) = _LookupKind;

  factory LookupKind.activity([@Default('activity_id') String kind]) = ACTIVITY;
  factory LookupKind.activityWithData([@Default('activity_id') String kind]) =
      ACTIVITY_WITH_DATA;
  factory LookupKind.reaction([@Default('reaction_id') String kind]) = REACTION;
  factory LookupKind.user([@Default('user_id') String kind]) = USER;
}
