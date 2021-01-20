import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
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

@swidget
Widget videoSeekBarHoverStyle(
  BuildContext context, {
  @required String id,
  @required double topMargin,
}) =>
    VideoControllerVis(
      id: id,
      child: Padding(
        padding: EdgeInsets.only(top: topMargin),
        child: PlayerAnimOpacity(
          id: id,
          child: SizedBox(
            height: Dimens.VIDEO_SEEK_BAR_HOVER_STYLE_H,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: Dimens.VIDEO_SLIDER_THUMB_RADIUS),
                Expanded(child: VideoSeekBar(id: id)),
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

/// we don't support [Slider.label] because we can't style it and there is no useful plugin.
class VideoSeekBar extends HookWidget {
  const VideoSeekBar({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final max =
        useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration))
            .inSeconds
            .toDouble();
    final value =
        useProvider(pVideoViewModel(id).state.select((it) => it.currentPosSafe))
            .inSeconds
            .toDouble();

    return Slider(
      max: max,
      value: value,
      onChanged: (value) => _onChanged(context, value),
      onChangeEnd: (value) => _onChangedEnd(context, value),
    );
  }

  void _onChanged(BuildContext context, double value) => context
      .read(pVideoViewModel(id))
      .seekTo(Duration(seconds: value.toInt()), false, false);

  void _onChangedEnd(BuildContext context, double value) => context
      .read(pVideoViewModel(id))
      .seekTo(Duration(seconds: value.toInt()), true, true);
}
