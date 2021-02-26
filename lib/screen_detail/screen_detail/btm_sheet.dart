import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/btm_sheet/btm_sheet_video_payment.dart';
import 'package:shirasu/btm_sheet/common.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/btm_sheet/btm_sheet_sns_share.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'btm_sheet.g.dart';

final _kPrvBtmSheetEvent = Provider.family.autoDispose<BtmSheetState, String>(
    (ref, id) => ref.watch(kPrvViewModelDetail(id).state).btmSheetState);

class BtmSheetEventListener extends StatelessWidget {
  const BtmSheetEventListener({
    @required this.child,
    @required this.id,
    Key key,
  }) : super(key: key);

  final Widget child;
  final String id;

  @override
  Widget build(BuildContext context) => ProviderListener<BtmSheetState>(
        provider: _kPrvBtmSheetEvent(id),
        onChange: _onChangeBtmSheet,
        child: child,
      );

  void _onChangeBtmSheet(BuildContext context, BtmSheetState portalState) {
    portalState.when(
      none: () {
        // do nothing
      },
      playSpeed: () async => _showBtmSheet(
        context,
        (context) => const BtmSheetPlaySpeed(),
      ),
      resolution: () => throw UnimplementedError(),
      commentSelect: (position) async => _showBtmSheet(
        context,
        (context) => BtmSheetCommentSelected(
          position: position,
          id: id,
        ),
      ),
      share: (shareUrl) async => _showBtmSheet(
        context,
        (context) => BtmSheetSnsShare(
          shareUrl: shareUrl,
          snackCallback: (snackMsg) =>
              context.read(kPrvViewModelDetail(id)).commandSnackBar(snackMsg),
        ),
      ),
      payment: () async =>
          context.read(kPrvViewModelDetail(id).state).prgDataResult.whenSuccess(
                (programDetailData, channelData, _) async => _showBtmSheet(
                  context,
                  (context) => BtmSheetCommon(
                    snackCallback: (snackMsg) => context
                        .read(kPrvViewModelDetail(id))
                        .commandSnackBar(snackMsg),
                    positiveBtnString: Strings.OPEN_WEB,
                    url: UrlUtil.channelId2Url(id),
                    child: BtmSheetVideoPayment(
                      program: programDetailData.program,
                      channelData: channelData,
                    ),
                  ),
                ),
              ),
    );
  }

  Future<void> _showBtmSheet(
      BuildContext context, WidgetBuilder builder) async {
    await showModalBottomSheet<void>(
      builder: builder,
      context: context,
    );
    context.read(kPrvViewModelDetail(id)).clearModal();
  }
}

@swidget
Widget btmSheetPlaySpeed(BuildContext context) => ListBtmSheetContent<double>(
      items: HivePrefRepositoryImpl.PLAY_SPEED,
      textBuilder: (speed) {
        final string = speed.truncate() == speed
            ? speed.toStringAsFixed(1)
            : speed.toString();
        return 'x$string';
      },
      isSelected: (speed) {
        final currentSpeed = useProvider(kPrvHivePlaySpeedUpdate).data?.value ??
            context.read(kPrvHivePrefRepository).playSpeed;
        return speed == currentSpeed;
      },
      onTap: (speed) async {
        await context.read(kPrvHivePrefRepository).setPlaySpeed(speed);
        Navigator.of(context).pop();
      },
    );

@hwidget
Widget btmSheetCommentSelected(
  BuildContext context, {
  @required String id,
  @required Duration position,
}) =>
    TextBtmSheetContent(
      text: Strings.BTM_SHEET_COMMENT_LABEL,
      onTap: () {
        context
            .read(kPrvViewModelDetail(id))
            .seekToWithBtmSheet(false, position);
        Navigator.of(context).pop();
      },
    );
