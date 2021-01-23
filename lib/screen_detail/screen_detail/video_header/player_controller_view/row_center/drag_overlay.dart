import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/extension.dart';
import '../../../../../util.dart';
import '../player_controller_view.dart';

// part 'drag_overlay.g.dart';

class DragOverlay extends HookWidget {
  const DragOverlay({
    Key key,
    @required this.conf,
    @required this.data,
  }) : super(key: key);

  final VideoViewModelConf conf;
  final SwipeData data;

  @override
  Widget build(BuildContext context) {
    useProvider(kPrvDragStartDx); //listen drag start fixme??

    Duration diffDuration = data.diffDuration;

    final videoPosWhenDragStart = useProvider(detailSNProvider(conf.id)
        .state
        .select((it) => it.playOutState.currentPosSafe));
    final videoReady = useProvider(kPrvVideoControllerReady(conf.id));
    if (!videoReady) return const SizedBox.shrink();

    final totalDuration = useProvider(detailSNProvider(conf.id)
        .state
        .select((it) => it.playOutState.totalDuration));

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
