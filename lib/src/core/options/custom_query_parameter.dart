import 'package:quiver/check.dart';
import 'package:stream/src/core/http/request.dart';
import 'package:stream/src/core/options/request_option.dart';

class CustomQueryParameter implements RequestOption {
  final String _name;
  final String _value;

  CustomQueryParameter(this._name, this._value) {
    checkNotNull(_name, message: 'Missing query parameter name');
    checkNotNull(_value, message: 'Missing query parameter value');
    checkArgument(_name.isNotEmpty,
        message: "Query parameter name can't be empty");
  }

  String get name => _name;

  String get value => _value;

  @override
  void apply(Request builder) {
    builder.query[name] = value;
  }
}
