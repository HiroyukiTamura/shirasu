//todo research more status
enum MediaStatus {
  ENDED,
  WAITING,
}

mixin MediaStatusMixin {
  String get mediaStatus;

  MediaStatus get mediaStatusStrict {
    switch (mediaStatus) {
      case 'ENDED':
        return MediaStatus.ENDED;
      case 'WAITING':
        return MediaStatus.WAITING;
      default:
        throw Exception('unexpected value: $mediaStatus');
    }
  }
}
