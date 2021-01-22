import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
              ),
              Theme(
                data: Styles.fullScreenTheme,
                child: VideoSeekBar(conf: conf,),
              ),
              const SizedBox(height: 16),
            ],
          )
        : _TimeText(conf: conf);

@hwidget
Widget _timeText({
  @required VideoViewModelConf conf,
  EdgeInsets padding = const EdgeInsets.all(8),
}) {
  final isSeekBarDragging = useProvider(
      pVideoViewModel(conf).state.select((it) => it.isSeekBarDragging));
  final total =
      useProvider(detailSNProvider(conf.id).state.select((it) => it.playOutState.totalDuration));
  final current =
      useProvider(pVideoViewModel(conf).state.select((it) => it.currentPos));

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
            fontSize: 12,
          ),
        ),
      ),
    ),
  );
}
