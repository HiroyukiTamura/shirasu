import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/dialog/btm_sheet_common.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:flutter_playout/video.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/extension.dart';

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
    final playOutState = useProvider(
        detailSNProvider(programId).state.select((it) => it.playOutState));
    final result = useProvider(detailSNProvider(programId)).state.prgDataResult
        as StateSuccess; //we want rebuild here

    final program = result.programDetailData.program;
    Widget child;
    switch (playOutState.commandedState) {
      case PlayerCommandedState.PRE_PLAY:
        child = _VideoThumbnail(
          programId: program.id,
          onTap: onTap,
          isLoading: false,
        );
        break;
      case PlayerCommandedState.INITIALIZING:
        child = _VideoThumbnail(
          programId: program.id,
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

class _VideoThumbnail extends HookWidget {
  const _VideoThumbnail({
    Key key,
    @required this.programId,
    @required this.isLoading,
    this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String programId;
  final bool isLoading;
  static const double _ICON_SIZE = 80;

  @override
  Widget build(BuildContext context) {
    final result = useProvider(detailSNProvider(programId)).state.prgDataResult
        as StateSuccess; //we want rebuild here

    final program = result.programDetailData.program;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: UrlUtil.getThumbnailUrl(program.id),
          errorWidget: (context, url, error) {
            //todo log and show error widget
            return Container();
          },
        ),
        _hoverWidget(context, program),
      ],
    );
  }

  Widget _hoverWidget(BuildContext context, ProgramDetail program) {
    if (isLoading) return _loadingCircle();

    final isWaiting = DateTime.now().isBefore(program.broadcastAt);
    final isPurchasable = program.onetimePlans.any((it) => it.isPurchasable);
    final isPurchased = program.viewerPlanType != null; //todo need more logic
    final canPreview = program.previewTime != 0;

    if (isPurchased) return isWaiting ? _waitingText() : _playBtn();

    return _HoverBackDrop(
      opacity: .7,
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isPurchasable)
              _HoverBtn(
                label: Strings.PURCHASE_BTN_TEXT,
                onPressed: () async => _onClickPurchaseBtn(context),
              ),
            if (isPurchasable && canPreview) const SizedBox(height: 16),
            if (canPreview && isWaiting) _previewExistMessage(),
            if (canPreview && !isWaiting)
              _HoverBtn(
                label: Strings.PREVIEW_BTN_TEXT,
                onPressed: () async => _onClickPreviewBtn(),
              ),
          ],
        ),
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

  /// todo implement
  Future<void> _onClickPurchaseBtn(BuildContext context) async {
    final result = context.read(detailSNProvider(programId).state).prgDataResult
        as StateSuccess;
    final program = result.programDetailData.program;
    final subscriptionPlan = result.channelData.channel.subscriptionPlan;
    await BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.programId2Url(programId),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              Strings.BTM_SHEET_MSG_PAYMENT_PREFIX,
              style: TextStyle(height: 1.3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...program.onetimePlans.map(
                    (it) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        '・ ${it.amountWithTax}${it.currencyAsSuffix}${Strings.SUFFIX_PURCHASE_ONE_TIME}',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '・ ${subscriptionPlan.amountWithTax}${subscriptionPlan.currencyAsSuffix}${Strings.SUFFIX_PURCHASE_SUBSCRIBE_CHANNEL}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              Strings.BTM_SHEET_MSG_PAYMENT,
              style: TextStyle(height: 1.3),
            ),
          ],
        ));
  }

  /// todo implement
  Future<void> _onClickPreviewBtn() async {}

  Widget _previewExistMessage() => const Text(
        Strings.PREVIEW_EXIST_MESSAGE,
        textAlign: TextAlign.center,
      );
}

class _HoverBtn extends StatelessWidget {
  const _HoverBtn({Key key, @required this.label, @required this.onPressed})
      : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => RaisedButton.icon(
        onPressed: onPressed,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: const BorderSide(color: Colors.white)),
        color: Colors.black,
        label: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
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
          padding: const EdgeInsets.all(16),
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
