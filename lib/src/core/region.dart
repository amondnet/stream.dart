import 'package:freezed_annotation/freezed_annotation.dart';

// name: Region
part 'region.freezed.dart';

@freezed
abstract class Region implements _$Region {
  Region._();
  factory Region(String region) = _Region;

  factory Region.US_EAST() => Region('us-east-api');
  factory Region.TOKYO() => Region('tokyo-api');
  factory Region.DUBLIN() => Region('dublin-api');
  factory Region.SINGAPORE() => Region('singapore-api');
  factory Region.CANADA() => Region('ca-central-1');

  @override
  String toString() => region;
}
