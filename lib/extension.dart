extension IteratableExt<E> on Iterable<E> {
  List<E> toUnmodifiableList() => List.unmodifiable(this);

  E firstWhereOrNull(bool Function(E) test) => firstWhere(test, orElse: () => null);
}

extension IntExt on int {
  int ceilFrom1() => this < 1 ? 1 : this;
}