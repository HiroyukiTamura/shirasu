enum SortDirection {
  ASC, DESC
}

extension SortDirectionX on SortDirection {
  String get value {
    switch(this) {
      case SortDirection.ASC:
        return 'asc';
      case SortDirection.DESC:
        return 'desc';
      default:
        throw ArgumentError();
    }
  }
}