import 'package:collection/collection.dart';

extension CollectionExtesion<T> on Iterable<T> {
  Iterable<(T, T)> pairs(bool Function(T a, T b) predicate) {
    final pairs = <(T, T)>[];

    for (final elementA in this) {
      for (final elementB in this) {
        // TODO(ilexbor): Maybe here we should add reference comparison
        if (predicate.call(elementA, elementB)) {
          final savedPair = pairs.firstWhereOrNull((element) {
            if (identical(element.$1, elementA) && identical(element.$2, elementB)) {
              return true;
            }
            if (identical(element.$1, elementB) && identical(element.$2, elementA)) {
              return true;
            }
            return false;
          });

          if (savedPair == null) {
            pairs.add((elementA, elementB));
          }
        }
      }
    }

    return pairs;
  }
}
