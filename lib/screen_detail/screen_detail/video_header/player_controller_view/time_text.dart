
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../util.dart';

part 'time_text.g.dart';

@hwidget
Widget timeText({@required String id}) {
  final isSeekBarDragging = useProvider(
      pVideoViewModel(id).state.select((it) => it.isSeekBarDragging));
  final total =
  useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
  final current =
  useProvider(pVideoViewModel(id).state.select((it) => it.currentPos));

  final totalStr = Util.formatDurationStyled(total);
  final currentStr = Util.formatDurationStyled(current);

  final invisible =
      isSeekBarDragging || total == Duration.zero || current == Duration.zero;

  /// immediately hide but show with animation
  return AnimatedOpacity(
    opacity: invisible ? 0 : 1,
    duration: const Duration(milliseconds: 300),
    child: Visibility(
      visible: !invisible,
      child: Container(
        padding: const EdgeInsets.all(8),
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