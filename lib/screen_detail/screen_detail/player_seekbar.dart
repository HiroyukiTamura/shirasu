import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_controller_vis.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'player_seekbar.g.dart';

@hwidget
Widget playerAnimOpacity({
  @required Widget child,
  @required String id,
}) {
  final visible = useProvider(
      pVideoViewModel(id).state.select((it) => it.controllerVisibility));
  return AnimatedOpacity(
    opacity: visible ? 1 : 0,
    duration: const Duration(milliseconds: 500),
    child: IgnorePointer(
      ignoring: !visible,
      child: child,
    ),
  );
}

class VideoSeekBar extends HookWidget {
  const VideoSeekBar({
    Key key,
    @required this.id,
    @required this.topMargin,
  }) : super(key: key);

  static const double HEIGHT = 36;

  final String id;
  final double topMargin;

  @override
  Widget build(BuildContext context) => VideoControllerVis(
        id: id,
        child: Padding(
          padding: EdgeInsets.only(top: topMargin),
          child: PlayerAnimOpacity(
            id: id,
            child: SizedBox(
              height: HEIGHT,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: Dimens.VIDEO_SLIDER_THUMB_RADIUS),
                  _SeekBarInner(id: id),
                  Container(
                    color: Theme.of(context).sliderTheme.inactiveTrackColor,
                    height: Theme.of(context).sliderTheme.trackHeight,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}

class _SeekBarInner extends HookWidget {
  const _SeekBarInner({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Slider(
          max: useProvider(
              pVideoViewModel(id).state.select((it) => it.durationSec)),
          value: useProvider(
              pVideoViewModel(id).state.select((it) => it.currentPosSec)),
          onChanged: (value) => _onChanged(context, value),
          onChangeEnd: (value) => _onChangedEnd(context, value),
        ),
      );

  void _onChanged(BuildContext context, double value) =>
      context.read(pVideoViewModel(id)).seekTo(value, false);

  void _onChangedEnd(BuildContext context, double value) =>
      context.read(pVideoViewModel(id)).seekTo(value, true);
}
