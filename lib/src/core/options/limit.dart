import 'package:quiver/check.dart';
import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

class Limit implements RequestOption {
  final int limit;

  const Limit(this.limit) : assert(limit >= 0);

  @override
  void apply(Request builder) {
    builder.query['limit'] = limit.toString();
  }
}
