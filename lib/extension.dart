extension IteratableExt<E> on Iterable<E> {
  List<E> toUnmodifiableList() => List.unmodifiable(this);

  E firstWhereOrNull(bool Function(E) test) => firstWhere(test, orElse: () => null);
}