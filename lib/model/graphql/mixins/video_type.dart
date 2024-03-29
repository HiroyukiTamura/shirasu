import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_type.freezed.dart';

mixin VideoTypeMixin {
  @protected
  String get videoType;

  // ignore: deprecated_member_use_from_same_package
  VideoType get videoTypeStrict => VideoType._parse(videoType);
}

@freezed
abstract class VideoType with _$VideoType {
  const factory VideoType.archived() = _VideoTypeArchived;

  const factory VideoType.live() = _VideoTypeLive;

  factory VideoType._parse(String videoType) {
    if (videoType == null) return null;

    switch (videoType) {
      case 'ArchivedVideo':
        return const VideoType.archived();
      case 'LiveVideo':
        return const VideoType.live();
      default:
        throw ArgumentError.value(videoType);
    }
  }
}
