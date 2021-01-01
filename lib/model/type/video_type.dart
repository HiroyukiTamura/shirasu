enum VideoType { ARCHIVED, LIVE }

mixin VideoTypeMixin {
  String get videoType;

  VideoType get videoTypeStrict {
    if (videoType == null) return null;

    switch (videoType) {
      case 'ArchivedVideo':
        return VideoType.ARCHIVED;
      case 'LiveVideo':
        return VideoType.LIVE;
      default:
        throw Exception('unexpected value: $videoType');
    }
  }
}
