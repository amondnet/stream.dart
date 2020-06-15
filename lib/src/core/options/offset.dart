import 'package:quiver/check.dart';
import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

class Offset implements RequestOption {
  final int offset;

  const Offset(this.offset) : assert(offset >= 0) ;

  @override
  void apply(Request builder) {
    if (offset > 0) {
      builder.query['offset'] = offset.toString();
    }
  }
}
