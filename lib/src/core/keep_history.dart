import 'package:freezed_annotation/freezed_annotation.dart';

// name: KeepHistory
part 'keep_history.freezed.dart';

@freezed
abstract class KeepHistory implements _$KeepHistory {
  KeepHistory._();
  factory KeepHistory(bool flag) = _KeepHistory;

  factory KeepHistory.yes([@Default(true) bool flag]) = YES;

  factory KeepHistory.no([@Default(false) bool flag]) = NO;
}
