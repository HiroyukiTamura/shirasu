import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/video.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/viewmodel/detail/viewmodel_detail.dart';

class VideoHolder {
  Video video;

  bool isEqualSource(PlayOutState state) =>
      video?.cookie == state?.cookie &&
      video?.isLiveStream == (state?.videoType == VideoType.LIVE) &&
      video?.url == state?.hlsMediaUrl;
}
