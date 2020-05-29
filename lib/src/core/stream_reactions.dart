import 'dart:async';
import 'dart:convert';

import 'package:quiver/check.dart';
import 'package:quiver/strings.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/models/reaction.dart';

import 'http/request.dart';
import 'http/token.dart';
import 'utils/requests.dart';
import 'utils/routes.dart';

class StreamReactions {
  final String key;
  final Uri baseURL;
  final HTTPClient httpClient;

  StreamReactions(this.key, this.baseURL, this.httpClient);

  Future<Reaction> get(Token token, String id) {
    checkNotNull(id, message: "Reaction id can't be null");
    checkArgument(isNotBlank(id), message: "Reaction id can't be empty");

    final url = Routes.buildReactionsURL(baseURL, id + '/');
    return httpClient
        .execute(Requests.buildGet(url, key, token))
        .then((value) async {
      return Reaction.fromJson(await value.body.json());
    });
  }
}
