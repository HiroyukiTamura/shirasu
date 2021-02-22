//todo research more status
enum MediaStatus {
  ENDED,
  WAITING,
  RUNNING,
}

mixin MediaStatusMixin {
  String get mediaStatus;

  MediaStatus get mediaStatusStrict {
    switch (mediaStatus) {
      case 'ENDED':
        return MediaStatus.ENDED;
      case 'WAITING':
        return MediaStatus.WAITING;
      case 'RUNNING':
        return MediaStatus.RUNNING;
      default:
        throw ArgumentError.value(mediaStatus);
    }
  }
}
