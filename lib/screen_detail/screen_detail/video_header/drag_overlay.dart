import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

import '../../../util.dart';
import 'horizontal_drag_detector.dart';

final kPrvIsDragging =
Provider.autoDispose<bool>((ref) => ref.watch(kPrvDragVm.state).isDragging);

class DragOverlay extends StatefulWidget {
  const DragOverlay({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  _DragOverlayState createState() => _DragOverlayState();
}


/// todo why [useAnimationController] doesn't support [AnimationController.reverseDuration]? send PR?
class _DragOverlayState extends State<DragOverlay>
    with SingleTickerProviderStateMixin {
  static const _DURATION_R = Duration(milliseconds: 200);
  AnimationController _ac;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _ac = AnimationController(
      vsync: this,
      duration: Duration.zero,
      reverseDuration: _DURATION_R,
    );
    _animation = CurvedAnimation(
      parent: _ac,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _ac.dispose();
  }

  @override
  Widget build(BuildContext context) => ProviderListener(
    onChange: _onChange,
    provider: kPrvIsDragging,
    child: FadeTransition(
      opacity: _animation,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Styles.VIDEO_SHADE,
        child: _DragOverlayContentWrapper(id: widget.id),
      ),
    ),
  );

  void _onChange(BuildContext context, bool isDragging) {
    if (isDragging) {
      if (_ac.status == AnimationStatus.completed ||
          _ac.status == AnimationStatus.reverse) _ac.reset();
      _ac.forward();
    } else
      _ac.reverse();
  }
}

class _DragOverlayContentWrapper extends HookWidget {
  const _DragOverlayContentWrapper({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final isDragging =
    useProvider(kPrvDragVm.state.select((it) => it.isDragging));
    final currentPos = useProvider(pVideoViewModel(id)).state.currentPos;
    return isDragging
        ? DragOverlayContent(
      id: id,
      videoPosWhenDragStart: currentPos,
    )
        : const SizedBox.shrink();
  }
}

class DragOverlayContent extends HookWidget {
  const DragOverlayContent({
    Key key,
    @required this.id,
    @required this.videoPosWhenDragStart,
  }) : super(key: key);

  final String id;
  final Duration videoPosWhenDragStart;

  static const _FACTOR_DX2SEC = 1;

  @override
  Widget build(BuildContext context) {
    final data = useProvider(kPrvDragVm.state.select((it) => it?.data));

    final dxDiff = (data.currentDx - data.startDx).toInt() * _FACTOR_DX2SEC;
    Duration diffDuration = Duration(seconds: dxDiff);
    final totalDuration =
    useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
    final isInitialized =
    useProvider(pVideoViewModel(id).state.select((it) => it.isInitialized));
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