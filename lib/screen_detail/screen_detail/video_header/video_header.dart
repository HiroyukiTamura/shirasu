import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

class VideoHeader extends HookWidget {
  const VideoHeader({
    Key key,
    @required this.programId,
    @required this.height,
    @required this.onTap,
    @required this.onTapPreviewBtn,
  }) : super(key: key);

  final String programId;
  final VoidCallback onTap;
  final VoidCallback onTapPreviewBtn;
  final double height;

  @override
  Widget build(BuildContext context) {
    final playOutState = useProvider(
        detailSNProvider(programId).state.select((it) => it.playOutState));
    final result = useProvider(detailSNProvider(programId)).state.prgDataResult
        as StateSuccess; //we don't want rebuild here

    final program = result.programDetailData.program;
    Widget child;
    switch (playOutState.commandedState) {
      case PlayerCommandedState.PRE_PLAY:
        child = VideoThumbnail(
          programId: program.id,
          onTap: onTap,
          onTapPreviewBtn: onTapPreviewBtn,
          isLoading: false,
        );
        break;
      case PlayerCommandedState.INITIALIZING:
        child = VideoThumbnail(
          programId: program.id,
          isLoading: true,
        );
        break;
      case PlayerCommandedState.POST_PLAY:
        child = PlayerView(
          programId: programId,
          prgTitle: program.title,
          channelTitle: program.channel.name,
        );
        break;
    }
    return SizedBox(
      height: height,
      child: child,
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
