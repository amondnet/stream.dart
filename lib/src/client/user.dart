import 'package:quiver/check.dart';
import 'package:stream/src/client/client.dart';
import 'package:stream/src/core/models/data.dart';

class User {
  final Client client;
  final String id;

  User(this.client, this.id) {
    checkNotNull(client, message: "Client can't be null");
    checkNotNull(id, message: "User ID can't be null");
    checkArgument(id.isNotEmpty, message: "User ID can't be empty");
  }

  Future<Data> get() {
    return client.getUser(id).then((response) async {
      return Data.fromJson(await response.body.json());
    });
  }

  Future<Data> getOrCreate([Data data]) {
    data ??= Data();
    return client.getOrCreateUser(id, data).then((response) async {
      return Data.fromJson(await response.body.json());
    });
  }
}
