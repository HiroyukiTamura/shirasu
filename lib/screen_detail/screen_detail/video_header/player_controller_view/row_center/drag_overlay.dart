import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../../util.dart';
import '../player_controller_view.dart';

part 'drag_overlay.g.dart';

const double _kFactorDx2sec = 1;

@hwidget
Widget dragOverlay({
  @required String id,
  @required SwipeData data,
}) {
  useProvider(kPrvDragStartDx); //listen drag start

  final dxDiff = (data.currentDx - data.startDx) * _kFactorDx2sec;
  Duration diffDuration = Duration(seconds: dxDiff.toInt());
  final totalDuration =
      useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
  final isInitialized =
      useProvider(pVideoViewModel(id).state.select((it) => it.isInitialized));

  final videoPosWhenDragStart =
      useProvider(pVideoViewModel(id)).state.currentPos;
  if (totalDuration == Duration.zero || !isInitialized)
    return const SizedBox.shrink();

  Duration aimingPos = videoPosWhenDragStart + diffDuration;
  if (totalDuration < aimingPos) {
    aimingPos = totalDuration;
    diffDuration = videoPosWhenDragStart - totalDuration;
  } else if (aimingPos < Duration.zero) {
    aimingPos = Duration.zero;
    diffDuration = -videoPosWhenDragStart;
  }

  final diffText = Util.formatDurationHHMM(diffDuration, true);
  final positionText = Util.formatDurationHHMM(aimingPos, false);

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          positionText,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          diffText,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
