import 'package:freezed_annotation/freezed_annotation.dart';

// name: Region
part 'region.freezed.dart';

@freezed
abstract class Region implements _$Region {
  Region._();
  factory Region(String region) = _Region;

  @override
  String toString() => region;
}
