import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/video.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'player_view.g.dart';

@hwidget
Widget playerView({
  @required PlayOutState playOutState,
}) {
  final holder = useProvider(videoProvider);

  if (!holder.isEqualSource(playOutState))
    holder.video = Video(
      isLiveStream: playOutState.videoType == VideoType.LIVE,
      url: playOutState.hlsMediaUrl,
      cookie: playOutState.cookie,
      autoPlay: true,
    );

  return holder.video;
}