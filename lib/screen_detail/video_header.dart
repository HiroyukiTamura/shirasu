import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:flutter_playout/video.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

class VideoHeader extends HookWidget {
  const VideoHeader({
    Key key,
    @required this.programId,
    @required this.height,
    @required this.onTap,
  }) : super(key: key);

  final String programId;
  final VoidCallback onTap;
  final double height;

  @override
  Widget build(BuildContext context) {
    final playOutState =
        useProvider(detailProvider(programId).select((it) => it.playOutState));
    final result = context.read(detailProvider(programId)).prgDataResult
        as PrgDetailResultSuccess;//todo should not call context.read in build method

    final program = result.programDetailData.program;
    Widget child;
    switch (playOutState.commandedState) {
      case PlayerCommandedState.PRE_PLAY:
        child = _VideoThumbnail(
          program: program,
          onTap: onTap,
          isLoading: false,
        );
        break;
      case PlayerCommandedState.INITIALIZING:
        child = _VideoThumbnail(
          program: program,
          isLoading: true,
        );
        break;
      case PlayerCommandedState.POST_PLAY:
        child = _PlayerView(playOutState: playOutState);
        break;
    }
    return SizedBox(
      height: height,
      child: child,
    );
  }
}

class _VideoThumbnail extends StatelessWidget {
  const _VideoThumbnail({
    Key key,
    @required this.program,
    @required this.isLoading,
    this.onTap,
  }) : super(key: key);

  final ProgramDetail program;
  final VoidCallback onTap;
  final bool isLoading;
  static const double _ICON_SIZE = 80;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: UrlUtil.getThumbnailUrl(program.id),
          errorWidget: (context, url, error) {
            //todo log and show error widget
            return Container();
          },
        ),
        _hoverWidget(),
      ],
    );
  }

  Widget _hoverWidget() {
    if (isLoading) return _loadingCircle();

    final isWaiting = DateTime.now().isBefore(program.broadcastAt);
    final isPurchasable = program.onetimePlans.any((it) => it.isPurchasable);
    final isPurchased = program.viewerPlanType != null; //todo need more logic
    final canPreview = program.previewTime != 0;

    if (isPurchased) return isWaiting ? _waitingText() : _playBtn();

    return _HoverBackDrop(
      opacity: .7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isPurchasable) _purchaseBtn(),
          if (canPreview) _previewBtn(),
        ],
      ),
    );
  }

  Widget _playBtn() => Center(
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: _ICON_SIZE,
            width: _ICON_SIZE,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.play_arrow,
              size: _ICON_SIZE,
              color: Colors.white,
            ),
          ),
        ),
      );

  Widget _loadingCircle() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget _waitingText() => const _HoverBackDrop(
        opacity: .7,
        child: Text(
          Strings.WAIT_FOR_START,
          style: TextStyles.DETAIL_HEADER_MSG,
        ),
      );

  //todo implement action, update ui
  Widget _purchaseBtn() => RaisedButton(
        onPressed: () {},
        child: const Text(Strings.PURCHASE_BTN_TEXT),
      );

  //todo implement action, update ui
  Widget _previewBtn() => RaisedButton(
        onPressed: () {},
        child: const Text(Strings.PREVIEW_BTN_TEXT),
      );
}

class _HoverBackDrop extends StatelessWidget {
  const _HoverBackDrop({
    Key key,
    @required this.child,
    @required this.opacity,
  }) : super(key: key);

  final Widget child;
  final double opacity;

  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black.withOpacity(.7),
          child: child,
        ),
      );
}

class _PlayerView extends HookWidget {
  const _PlayerView({
    Key key,
    @required this.playOutState,
  }) : super(key: key);

  final PlayOutState playOutState;

  @override
  Widget build(BuildContext context) {
    final holder = useProvider(videoProvider);

    if (!holder.isEqualSource(playOutState))
      holder.video = Video(
        isLiveStream: playOutState.videoType == VideoType.LIVE,
        url: playOutState.hlsMediaUrl,
        cookie: playOutState.cookie,
        autoPlay: true,
      );

    return holder.video;
  }
}

enum HoverBtnType {
  NOTHING,
  PLAY,
  BUY,
  WAITING,
  BUY_OR_PREVIEW,
}
