import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/dialog/btm_sheet_common.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'video_thumbnail.g.dart';

const double _ICON_SIZE = 80;

class VideoThumbnail extends HookWidget {
  const VideoThumbnail({
    Key key,
    @required this.programId,
    @required this.isLoading,
    this.onTap,
    this.onTapPreviewBtn,
  }) : super(key: key);

  final VoidCallback onTap;
  final VoidCallback onTapPreviewBtn;
  final String programId;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final result = useProvider(detailSNProvider).state.prgDataResult
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
    if (isLoading) return const CenterCircleProgress();

    final isWaiting = DateTime.now().isBefore(program.broadcastAt);
    final isPurchasable =
        program.onetimePlans.any((it) => it.isPurchasable); // todo fix
    final isPurchased =
        program.viewerPlanTypeStrict != null; //todo need more logic
    final canPreview = program.previewTime != 0;

    if (isPurchased)
      return isWaiting
          ? const _WaitingText()
          : _PlayBtn(onTap: onTapPreviewBtn);

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
            if (canPreview && isWaiting) const _PreviewExistMessage(),
            if (canPreview && !isWaiting)
              _HoverBtn(
                label: Strings.PREVIEW_BTN_TEXT,
                onPressed: onTapPreviewBtn,
              ),
          ],
        ),
      ),
    );
  }

  /// todo implement
  Future<void> _onClickPurchaseBtn(BuildContext context) async {
    final result =
        context.read(detailSNProvider).state.prgDataResult as StateSuccess;
    final program = result.programDetailData.program;
    final subscriptionPlan = result.channelData.channel.subscriptionPlan;
    await BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.programId2Url(programId),
        child: Column(//todo extract
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
}

@swidget
Widget _playBtn({
  @required GestureTapCallback onTap,
}) =>
    Center(
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

@swidget
Widget _previewExistMessage() => const Text(
      Strings.PREVIEW_EXIST_MESSAGE,
      textAlign: TextAlign.center,
    );

@swidget
Widget _waitingText() => const _HoverBackDrop(
      opacity: .7,
      child: Text(
        Strings.WAIT_FOR_START,
        style: TextStyles.DETAIL_HEADER_MSG,
      ),
    );

@swidget
Widget _hoverBtn({
  @required String label,
  @required VoidCallback onPressed,
}) => RaisedButton.icon(
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


@swidget
Widget _hoverBackDrop({
  @required double opacity,
  @required Widget child,
}) => SizedBox.expand(
  child: Container(
    padding: const EdgeInsets.all(16),
    alignment: Alignment.center,
    color: Colors.black.withOpacity(.7),
    child: child,
  ),
);