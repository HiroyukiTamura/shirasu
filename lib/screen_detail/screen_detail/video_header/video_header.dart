import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/ui_common/animated_shower.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';

part 'video_header.g.dart';

@hwidget
Widget videoHeader({
  @required VideoViewModelConf conf,
  @required VoidCallback onTap,
  @required VoidCallback onTapPreviewBtn,
  @required ProgramDetail program,
  @required double height,
}) {
  final commandedState = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.commandedState));

  final videoPlayerState = useProvider(kPrvViewModelDetail(conf.id)
      .state
      .select((it) => it.playOutState.videoPlayerState));

  return SizedBox(
    height: height,
    child: Stack(
      children: [
        if (commandedState == const PlayerCommandedState.postPlay())
          PlayerViewWrapper(conf: conf),
        commandedState.when(
          prePlay: () => VideoThumbnail(
            program: program,
            onTap: onTap,
            onTapPreviewBtn: onTapPreviewBtn,
          ),
          postPlay: () => videoPlayerState.when(
            error: (msg) => const _PageErrText(),
            // todo implement err msg
            preInitialized: () => LoadingThumbnail(id: conf.id),
            finish: () => const SizedBox.shrink(),
            //todo fixme
            ready: () => BufferingIndicator(id: conf.id),
          ),
          initializing: () => LoadingThumbnail(id: conf.id),
          error: (msg) => const _PageErrText(),
        )
      ],
    ),
  );
}

@hwidget
Widget _pageErrText({
  String text = Strings.SNACK_ERR,
}) =>
    PageErrText(
      text: text,
      backColor: Colors.black,
    );

@visibleForTesting
@hwidget
Widget bufferingIndicator({
  @required String id,
}) {
  final isBuffering = useProvider(kPrvViewModelDetail(id)
      .state
      .select((it) => it.playOutState.isBuffering));

  return AnimatedShower(
    visible: isBuffering,
    duration: 100.milliseconds,
    child: const CenterCircleProgress(
      valueColor: AlwaysStoppedAnimation(Colors.white),
    ),
  );
}
