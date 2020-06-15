import 'package:stream/src/core/options/activity_marker.dart';
import 'package:stream/src/core/options/enrichment_flags.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/options/offset.dart';

class DefaultOptions {
  static const Limit DEFAULT_LIMIT = Limit(25);
  static const Offset DEFAULT_OFFSET = Offset(0);
  static final Filter DEFAULT_FILTER = Filter();
  static final ActivityMarker DEFAULT_MARKER = ActivityMarker();
  static final EnrichmentFlags DEFAULT_ENRICHMENT_FLAGS = EnrichmentFlags();
  static final int DEFAULT_ACTIVITY_COPY_LIMIT = 100;
  static final int MAX_ACTIVITY_COPY_LIMIT = 1000;
}
