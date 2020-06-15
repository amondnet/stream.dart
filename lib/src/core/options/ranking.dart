import 'package:quiver/check.dart';
import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

class Ranking implements RequestOption {
  final String ranking;

  Ranking(this.ranking) {
    checkNotNull(ranking, message: "Ranking can't be empty");
    checkArgument(ranking.isNotEmpty, message: "Ranking can't be empty");
  }

  String getRanking() {
    return ranking;
  }

  @override
  void apply(Request builder) {
    builder.query['ranking'] = ranking;
  }
}
