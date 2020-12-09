extension IteratableExt<E> on Iterable<E> {
  List<E> toUnmodifiableList() => List.unmodifiable(this);

  E firstWhereOrNull(bool Function(E) test) =>
      firstWhere(test, orElse: () => null);

  List<E> joinWith(E Function() separator) {
    final list = <E>[];
    for (int i = 0; i< length; i++) {
      list.add(elementAt(i));
      if (i != length-1)
        list.add(separator());
    }

    return list;
  }
}

extension IntExt on int {
  int ceilFrom1() => this < 1 ? 1 : this;
}
