//todo research more status
import 'package:flutter/cupertino.dart';

enum MediaStatus {
  ENDED, WAITING,
}

@immutable
abstract class MediaStatusGetter {
  MediaStatus get mediaStatusStrict;

  static MediaStatus parse(String value) {
    switch (value) {
      case 'ENDED':
        return MediaStatus.ENDED;
      case 'WAITING':
        return MediaStatus.WAITING;
      default:
        throw Exception('unexpected value: $value');
    }
  }
}