import 'package:quiver/check.dart';
import 'package:stream/src/core/http/request.dart';

import 'request_option.dart';

enum _OpType {
  OWN_CHILDREN,
  OWN_REACTIONS,
  REACTION_COUNTS,
// XXX: move it to a separate option???
  REACTION_KINDS,
  RECENT_REACTIONS,
  RECENT_REACTIONS_LIMIT
}

extension on _OpType {
  String get operator {
    switch (this) {
      case _OpType.OWN_CHILDREN:
        return 'with_own_children';
      case _OpType.OWN_REACTIONS:
        return 'with_own_reactions';
      case _OpType.REACTION_COUNTS:
        return 'with_reaction_counts';
      case _OpType.REACTION_KINDS:
        return 'reaction_kinds_filter';
      case _OpType.RECENT_REACTIONS:
        return 'with_recent_reactions';
      case _OpType.RECENT_REACTIONS_LIMIT:
        return 'recent_reactions_limit';
    }
    return null;
  }
}

class _OpEntry {
  String type;
  String value;

  _OpEntry(_OpType type, String value) {
    this.type = type.operator;
    this.value = value;
  }
}

class EnrichmentFlags implements RequestOption {
  final List<_OpEntry> ops = [];
  String _userID;

  EnrichmentFlags withOwnReactions() {
    ops.add(_OpEntry(_OpType.OWN_REACTIONS, 'true'));
    return this;
  }

  EnrichmentFlags withUserReactions(String userID) {
    checkNotNull(userID, message: 'No user ID');
    checkArgument(userID.isNotEmpty, message: 'No user ID');
    ops.add(_OpEntry(_OpType.OWN_REACTIONS, 'true'));
    _userID = userID;
    return this;
  }

  EnrichmentFlags withRecentReactions() {
    ops.add(_OpEntry(_OpType.RECENT_REACTIONS, 'true'));
    return this;
  }

  EnrichmentFlags withRecentReactionsLimit(int limit) {
    checkArgument(limit > 0, message: 'Limit should be a positive value');
    ops.add(_OpEntry(_OpType.RECENT_REACTIONS_LIMIT, limit.toString()));
    return withRecentReactions();
  }

  EnrichmentFlags reactionKindFilter(List<String> kinds) {
    checkNotNull(kinds, message: 'No kinds to filter by');
    checkArgument(kinds.isNotEmpty, message: 'No kinds to filter by');
    ops.add(_OpEntry(_OpType.REACTION_KINDS, kinds.join(',')));
    return this;
  }

  EnrichmentFlags withReactionCounts() {
    ops.add(_OpEntry(_OpType.REACTION_COUNTS, 'true'));
    return this;
  }

  EnrichmentFlags withOwnChildren() {
    ops.add(_OpEntry(_OpType.OWN_CHILDREN, 'true'));
    return this;
  }

  EnrichmentFlags withUserChildren(String userID) {
    checkNotNull(userID, message: 'No user ID');
    checkArgument(userID.isNotEmpty, message: 'No user ID');
    ops.add(_OpEntry(_OpType.OWN_CHILDREN, 'true'));
    _userID = userID;
    return this;
  }

  @override
  void apply(Request builder) {
    for (var op in ops) {
      builder.query[op.type] = op.value;
    }
    if (_userID != null) {
      builder.query['user_id'] = _userID;
    }
  }
}
