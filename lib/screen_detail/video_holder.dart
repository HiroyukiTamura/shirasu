import 'package:flutter_playout/video.dart';
import 'package:shirasu/model/type/video_type.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

class VideoHolder {
  Video video;

  bool isEqualSource(PlayOutState state) =>
      video?.cookie == state?.cookie &&
      video?.isLiveStream == (state?.videoType == VideoType.LIVE) &&
      video?.url == state?.hlsMediaUrl;
}
