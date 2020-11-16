import 'package:flutter/cupertino.dart';

enum VideoType { ARCHIVED, LIVE }

@immutable
abstract class VideoTypeGetter {
  VideoType get videoTypeStrict;

  static VideoType parse(String value) {
    switch (value) {
      case 'ArchivedVideo':
        return VideoType.ARCHIVED;
      case 'LiveVideo':
        return VideoType.LIVE;
      default:
        throw Exception('unexpected value: $value');
    }
  }
}
