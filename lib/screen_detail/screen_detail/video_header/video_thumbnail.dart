import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/btm_sheet/video_payment_btm_sheet.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/play_btn.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/ui_util.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'video_thumbnail.g.dart';

@swidget
Widget loadingThumbnail({@required String id}) => Stack(
      children: [
        CustomCachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: UrlUtil.getThumbnailUrl(id),
          errorWidget: Util.defaultPrgThumbnail,
        ),
        const CenterCircleProgress(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ],
    );

class VideoThumbnail extends HookWidget {
  const VideoThumbnail({
    Key key,
    @required this.program,
    this.onTap,
    this.onTapPreviewBtn,
  }) : super(key: key);

  final VoidCallback onTap;
  final VoidCallback onTapPreviewBtn;
  final ProgramDetail program;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          CustomCachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: UrlUtil.getThumbnailUrl(program.id),
            errorWidget: Util.defaultPrgThumbnail,
          ),
          _HoverWidget(
            program: program,
            onClickPurchaseBtn: _onClickPurchaseBtn,
            onTapPreviewBtn: onTapPreviewBtn,
            onTap: onTap,
          ),
        ],
      );

  /// todo extract
  Future<void> _onClickPurchaseBtn(BuildContext context) async {
    final result =
        context.read(kPrvViewModelDetail(program.id).state).prgDataResult;
    if (result is DetailStateSuccess)
      await BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.programId2Url(program.id),
        child: VideoPaymentBtmSheet(result: result),
        snackCallback: (msg) => context
            .read(kPrvViewModelDetail(program.id))
            .commandSnackBar(const SnackMsg.unknown()),
      );
  }
}

@swidget
Widget _hoverWidget(
  BuildContext context, {
  @required ProgramDetail program,
  @required VoidCallback onTap,
  @required VoidCallback onTapPreviewBtn,
  @required OnTap onClickPurchaseBtn,
}) {
  final isWaiting = DateTime.now().isBefore(program.broadcastAt);
  final isPurchasable = program.onetimePlanMain != null;
  final isPurchased = program.viewerPlanTypeStrict != null;
  final canPreview = program.previewTime != 0;

  if (isPurchased)
    return isWaiting
        ? const _HoverText(text: Strings.WAIT_FOR_START)
        : PlayBtn(onTap: onTap);

  if (program.isInVideoArchiving)
    return const _HoverText(text: Strings.PROGRAM_ARCHIVING);

  return _HoverBackDrop(
    child: IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (isPurchasable)
            _HoverBtn(
              label: Strings.PURCHASE_BTN_TEXT,
              onPressed: () => onClickPurchaseBtn(context),
            ),
          if (isPurchasable && canPreview) const SizedBox(height: 16),
          if (canPreview)
            isWaiting
                ? const _PreviewExistMessage()
                : _HoverBtn(
                    label: Strings.PREVIEW_BTN_TEXT,
                    onPressed: onTapPreviewBtn,
                  ),
        ],
      ),
    ),
  );
}

@swidget
Widget _previewExistMessage() => const Text(
      Strings.PREVIEW_EXIST_MESSAGE,
      textAlign: TextAlign.center,
    );

@swidget
Widget _hoverText({
  @required String text,
}) =>
    _HoverBackDrop(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: FontSize.S16,
          color: Colors.white,
        ),
      ),
    );

@swidget
Widget _hoverBtn({
  @required String label,
  @required VoidCallback onPressed,
}) =>
    RaisedButton.icon(
      onPressed: onPressed,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: kCircleBorderRadius,
        side: const BorderSide(color: Colors.white),
      ),
      color: Colors.black,
      label: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: FontSize.S16,
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
  @required Widget child,
}) =>
    SizedBox.expand(
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        color: Colors.black.withOpacity(.7),
        child: child,
      ),
    );
