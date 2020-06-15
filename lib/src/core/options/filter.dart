import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

class OpEntry {
  String type;
  String value;

  OpEntry(OpType type, String value) {
    this.type = type.operator;
    this.value = value;
  }
}

class Filter implements RequestOption {
  final List<OpEntry> ops = [];

  Filter idGreaterThan(String id) {
    ops.add(OpEntry(OpType.ID_GREATER_THEN, id));
    return this;
  }

  Filter idGreaterThanEqual(String id) {
    ops.add(OpEntry(OpType.ID_GREATER_THEN_OR_EQUAL, id));
    return this;
  }

  Filter idLessThan(String id) {
    ops.add(OpEntry(OpType.ID_LESS_THEN, id));
    return this;
  }

  Filter idLessThanEqual(String id) {
    ops.add(OpEntry(OpType.ID_LESS_THEN_OR_EQUAL, id));
    return this;
  }

  @override
  void apply(Request builder) {
    for (var op in ops) {
      builder.query[op.type] = op.value;
    }
  }
}

enum OpType {
  ID_GREATER_THEN_OR_EQUAL,
  ID_GREATER_THEN,
  ID_LESS_THEN_OR_EQUAL,
  ID_LESS_THEN
}

extension on OpType {
  String get operator {
    switch (this) {
      case OpType.ID_GREATER_THEN_OR_EQUAL:
        return 'id_gte';
      case OpType.ID_GREATER_THEN:
        return 'id_gt';
      case OpType.ID_LESS_THEN_OR_EQUAL:
        return 'id_lte';
      case OpType.ID_LESS_THEN:
        return 'id_lt';
    }
    return null;
  }
}
