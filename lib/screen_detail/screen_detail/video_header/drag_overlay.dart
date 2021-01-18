import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

import '../../../util.dart';

class DragOverlay extends HookWidget {
  const DragOverlay({
    Key key,
    @required this.id,
    @required this.data,
  }) : super(key: key);

  final SwipeData data;
  final String id;

  static const _FACTOR_DX2SEC = 1;

  @override
  Widget build(BuildContext context) {
    useProvider(kPrvDragStartDx);//listen drag start

    final dxDiff = (data.currentDx - data.startDx).toInt() * _FACTOR_DX2SEC;
    Duration diffDuration = Duration(seconds: dxDiff);
    final totalDuration =
    useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
    final isInitialized =
    useProvider(pVideoViewModel(id).state.select((it) => it.isInitialized));

    final videoPosWhenDragStart = useProvider(pVideoViewModel(id)).state.currentPos;
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
}