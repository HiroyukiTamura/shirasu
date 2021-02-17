import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

class VideoHeader extends HookWidget {
  const VideoHeader({
    Key key,
    @required this.conf,
    @required this.height,
    @required this.onTap,
    @required this.onTapPreviewBtn,
  }) : super(key: key);

  final VideoViewModelConf conf;
  final VoidCallback onTap;
  final VoidCallback onTapPreviewBtn;
  final double height;

  @override
  Widget build(BuildContext context) {
    final result = useProvider(kPrvViewModelDetail(conf.id)).state.prgDataResult
        as StateSuccess; //we don't want rebuild here
    final program = result.programDetailData.program;

    final child = useProvider(kPrvViewModelDetail(conf.id)
        .state
        .select((it) => it.playOutState.commandedState)).when(
      playError: () => throw UnimplementedError(),
      prePlay: () => VideoThumbnail(
        programId: program.id,
        onTap: onTap,
        onTapPreviewBtn: onTapPreviewBtn,
      ),
      postPlay: () => Stack(
        children: [
          PlayerView(
            conf: conf,
          ),
          _PlayerViewPlaceHolder(
            id: conf.id,
          ),
        ],
      ),
      initializing: () => LoadingThumbnail(id: conf.id),
      error: () => throw UnimplementedError(),
    );
    return SizedBox(
      height: height,
      child: child,
    );
  }
}

class _PlayerViewPlaceHolder extends HookWidget {
  const _PlayerViewPlaceHolder({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) => useProvider(kPrvViewModelDetail(id)
          .state
          .select((it) => it.playOutState.videoPlayerState)).when(
        error: (msg) => Container(), // todo implement
        preInitialized: () => LoadingThumbnail(id: id),
        finish: () => const SizedBox.shrink(), //todo fixme
        ready: () => _BufferingIndicator(id: id),
      );
}

class _BufferingIndicator extends HookWidget {
  const _BufferingIndicator({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    final isBuffering = useProvider(
        kPrvViewModelDetail(id).state.select((it) => it.playOutState.isBuffering));

    return Visibility(
      visible: isBuffering,
      child: Center(
        child: SizedBox(
          width: Dimens.VIDEO_PLAY_PAUSE_BTN_W,
          height: Dimens.VIDEO_PLAY_PAUSE_BTN_W,
          child: Theme(
            data: Theme.of(context).copyWith(
              accentColor: Colors.white,
            ),
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 100),
                opacity: isBuffering ? 1 : 0,
                child: const CenterCircleProgress()),
          ),
        ),
      ),
    );
  }
}

enum HoverBtnType {
  NOTHING,
  PLAY,
  BUY,
  WAITING,
  BUY_OR_PREVIEW,
}
