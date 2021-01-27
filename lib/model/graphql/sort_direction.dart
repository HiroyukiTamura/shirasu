enum SortDirection {
  ASC, DESC
}

extension SortDirectionX on SortDirection {
  String get value {
    switch(this) {
      case SortDirection.ASC:
        return 'ASC';
      case SortDirection.DESC:
        return 'DESC';
      default:
        throw ArgumentError();
    }
  }
}