import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/ui_common/animated_shower.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';

import '../../../../util.dart';
import '../../player_seekbar.dart';

part 'row_bottom.g.dart';

@hwidget
Widget rowBottom({
  @required VideoViewModelConf conf,
}) {
  final isLive = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.videoType == VideoType.live()));
  if (isLive) return _LiveText();

  return conf.fullScreen
      ? Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _TimeText(
              conf: conf,
              padding: EdgeInsets.symmetric(
                horizontal: PlayerControllerView.getFullScreenPadding(true),
              ),
            ),
            Theme(
              data: Styles.fullScreenTheme,
              child: VideoSeekBar(
                conf: conf,
              ),
            ),
          ],
        )
      : _TimeText(conf: conf);
}

//todo debug
@swidget
Widget _liveText() => Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.bottomCenter,
      child: Text(
        Strings.PLAYER_CONTROLLER_LABEL_LIVE,
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
    );

@hwidget
Widget _timeText({
  @required VideoViewModelConf conf,
  EdgeInsets padding = const EdgeInsets.all(8),
}) {
  final isSeekBarDragging = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.isSeekBarDragging));
  final total = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.totalDurationSafe));
  final current = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.currentPosForUiSafe));

  final totalStr = Util.formatDurationStyled(total);
  final currentStr = Util.formatDurationStyled(current);

  final invisible = isSeekBarDragging || total == Duration.zero;

  /// immediately hide but show with animation
  return AnimatedShower(
    duration: 300.milliseconds,
    visible: !invisible,
    child: Container(
      padding: padding,
      alignment: Alignment.bottomLeft,
      child: Text(
        '$currentStr / $totalStr',
        style: const TextStyle(
          fontSize: FontSize.SMALL,
        ),
      ),
    ),
  );
}
