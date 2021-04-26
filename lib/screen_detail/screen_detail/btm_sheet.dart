import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/btm_sheet/btm_sheet_review.dart';
import 'package:shirasu/btm_sheet/btm_sheet_video_payment.dart';
import 'package:shirasu/btm_sheet/common.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/btm_sheet/btm_sheet_sns_share.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/extension.dart';

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
        (context) => const SafeArea(child: BtmSheetPlaySpeed()),
      ),
      resolution: () => throw UnimplementedError(),
      commentSelect: (position) async => _showBtmSheet(
        context,
        (context) => SafeArea(
          child: BtmSheetCommentSelected(
            position: position,
            id: id,
          ),
        ),
      ),
      share: (shareUrl) async => _showBtmSheet(
        context,
        (context) => SafeArea(
          child: BtmSheetSnsShare(
            shareUrl: shareUrl,
            snackCallback: (snackMsg) =>
                context.read(kPrvViewModelDetail(id)).commandSnackBar(snackMsg),
          ),
        ),
      ),
      payment: () async =>
          context.read(kPrvViewModelDetail(id).state).prgDataResult.whenSuccess(
                (programDetailData, channelData, _) async => _showBtmSheet(
                  context,
                  (context) => SafeArea(
                    child: BtmSheetCommon(
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
              ),

      /// only for [ScreenDetail]
      fcmMenu: (channelId, programId) async => _showBtmSheet(
        context,
        (context) => SafeArea(
          child: BtmSheetFcmMenu(
            channelId: channelId,
            programId: programId,
            onTap: (status) async {
              Navigator.pop(context);
              final viewModel = context.read(kPrvViewModelDetail(programId));
              await status.when(
                  channel: () async => viewModel.subscribeChannel(),
                  program: () async => viewModel.subscribeProgram(),
                  none: () => throw ArgumentError.value(status));
            },
          ),
        ),
      ),
      myReviewMenu: (viewerId, programId) async => _showBtmSheet(
        context,
        (context) => SafeArea(
          child: BtmSheetMyReview(
            onTapEdit: () => context.pushPage(GlobalRoutePath.editReview(programId)), //todo hide BtmSheet
            onTapDelete: () async => context.read(kPrvViewModelDetail(programId)).deleteReview(),
          ),
        ),
      ),
      shareReview: (programId, item, programTitle) async => _showBtmSheet(
        context,
        (context) => SafeArea(
            child: BtmSheetSnsShare(
          shareUrl: ShareUrl(
            url: UrlUtil.programId2ReviewUrl(programId, item.user.id),
            urlTwitter: UrlUtil.getUserReviewTwitterUrl(
              title: programTitle,
              programId: programId,
              reviewerId: item.user.id,
            ).toString(),
          ),
          snackCallback: (snackMsg) =>
              context.read(kPrvViewModelDetail(id)).commandSnackBar(snackMsg),
        )),
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
            context
                .read(kPrvHivePrefRepository)
                .playSpeed; //todo is good pattern?
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
    BtmSheetListItem(
      icon: Icons.access_time,
      title: Strings.BTM_SHEET_COMMENT_LABEL,
      onTap: () {
        context
            .read(kPrvViewModelDetail(id))
            .seekToWithBtmSheet(false, position);
        Navigator.of(context).pop();
      },
    );

//todo refactor
@hwidget
Widget btmSheetFcmMenu(
  BuildContext context, {
  @required String channelId,
  @required String programId,
  @required void Function(FcmSubscribingStatus status) onTap,
}) =>
    ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 56,
          child: ListTile(
            onTap: () => onTap(const FcmSubscribingStatus.channel()),
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.BTM_SHEET_FCM_CHANNEL,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 64,
          child: ListTile(
            onTap: () => onTap(const FcmSubscribingStatus.program()),
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.BTM_SHEET_FCM_PROGRAM,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        )
      ],
    );
