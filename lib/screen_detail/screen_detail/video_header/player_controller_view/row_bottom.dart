import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../util.dart';
import '../../player_seekbar.dart';

part 'row_bottom.g.dart';

@hwidget
Widget rowBottom({
  @required VideoViewModelConf conf,
}) =>
    conf.fullScreen
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
                child: VideoSeekBar(conf: conf,),
              ),
            ],
          )
        : _TimeText(conf: conf);

@hwidget
Widget _timeText({
  @required VideoViewModelConf conf,
  EdgeInsets padding = const EdgeInsets.all(8),
}) {
  final isSeekBarDragging = useProvider(
      detailSNProvider(conf.id).state.select((it) => it.playOutState.isSeekBarDragging));
  final total =
      useProvider(detailSNProvider(conf.id).state.select((it) => it.playOutState.totalDuration));
  final current =
      useProvider(detailSNProvider(conf.id).state.select((it) => it.playOutState.currentPosForUi));

  final totalStr = Util.formatDurationStyled(total);
  final currentStr = Util.formatDurationStyled(current);

  final invisible = isSeekBarDragging || total == Duration.zero;

  /// immediately hide but show with animation
  return AnimatedOpacity(
    opacity: invisible ? 0 : 1,
    duration: const Duration(milliseconds: 300),
    child: Visibility(
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
    ),
  );
}
