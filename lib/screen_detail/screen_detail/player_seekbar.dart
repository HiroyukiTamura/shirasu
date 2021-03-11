import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_controller_vis.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';

part 'player_seekbar.g.dart';

@hwidget
Widget playerAnimOpacity({
  @required Widget child,
  @required String id,
}) {
  final visible = useProvider(kPrvViewModelDetail(id)
      .state
      .select((it) => it.playOutState.controllerVisibility));
  return AnimatedOpacity(
    opacity: visible ? 1 : 0,
    duration: 500.milliseconds,
    child: IgnorePointer(
      ignoring: !visible,
      child: child,
    ),
  );
}

@hwidget
Widget videoSeekBarHoverStyle(
  BuildContext context, {
  @required VideoViewModelConf conf,
  @required double topMargin,
}) =>
    Visibility(
      visible: useProvider(kPrvIsArch(conf.id)),
      child: VideoControllerVis(
        id: conf.id,
        child: Padding(
          padding: EdgeInsets.only(top: topMargin),
          child: PlayerAnimOpacity(
            id: conf.id,
            child: SizedBox(
              height: Dimens.VIDEO_SEEK_BAR_HOVER_STYLE_H,
              child: Row(
                children: [
                  const SizedBox(width: Dimens.VIDEO_SLIDER_THUMB_RADIUS),
                  Expanded(
                    child: VideoSeekBar(conf: conf),
                  ),
                  Container(
                    color: Theme.of(context).sliderTheme.inactiveTrackColor,
                    height: Theme.of(context).sliderTheme.trackHeight,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

/// we don't support [Slider.label] because we can't style it and there is no useful plugin.
/// must be showed on VOD.
class VideoSeekBar extends HookWidget {
  const VideoSeekBar({@required this.conf});

  final VideoViewModelConf conf;

  @override
  Widget build(BuildContext context) {
    final max = useProvider(kPrvViewModelDetail(conf.id)
            .state
            .select((it) => it.playOutState.totalDurationSafe))
        .inSeconds
        .toDouble();
    final value = useProvider(kPrvViewModelDetail(conf.id)
            .state
            .select((it) => it.playOutState.currentPosForUiSafe))
        .inSeconds
        .toDouble();

    return Slider(
      max: max,
      value: value,
      onChanged: (it) => _onChanged(context, it),
      onChangeEnd: (it) => _onChangedEnd(context, it),
    );
  }

  void _onChanged(BuildContext context, double value) => context
      .read(kPrvViewModelDetail(conf.id))
      .seekToWithSlider(conf.fullScreen, value.seconds, false, false);

  void _onChangedEnd(BuildContext context, double value) => context
      .read(kPrvViewModelDetail(conf.id))
      .seekToWithSlider(conf.fullScreen, value.seconds, true, true);
}
