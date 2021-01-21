import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../util.dart';
import '../../player_seekbar.dart';

part 'row_bottom.g.dart';

@hwidget
Widget rowBottom({@required String id}) =>
    useProvider(pVideoViewModel(id).state.select((it) => it.isFullScreen))
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _TimeText(
                id: id,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
              ),
              Theme(
                data: Styles.fullScreenTheme,
                child: VideoSeekBar(id: id),
              ),
              const SizedBox(height: 16),
            ],
          )
        : _TimeText(id: id);

@hwidget
Widget _timeText({
  @required String id,
  EdgeInsets padding = const EdgeInsets.all(8),
}) {
  final isSeekBarDragging = useProvider(
      pVideoViewModel(id).state.select((it) => it.isSeekBarDragging));
  final total =
      useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
  final current =
      useProvider(pVideoViewModel(id).state.select((it) => it.currentPos));

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
