import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/ui_common/hive_fcm_topic_listenable.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'row_fabs.g.dart';

class RowFabs extends HookWidget {
  const RowFabs({
    @required this.program,
    Key key,
  }) : super(key: key);

  static const double _PADDING_V = 36;
  final ProgramDetail program;

  ShareUrl get shareUrl => ShareUrl(
        url: UrlUtil.programId2Url(program.id),
        urlTwitter:
            UrlUtil.programId2TwitterUrl(program.title, program.id).toString(),
        urlFaceBook: UrlUtil.programId2FaceBookUrl(program.id).toString(),
      );

  /// todo overflow
  @override
  Widget build(BuildContext context) {
    final maybeVod = useProvider(kPrvIsArch(program.id));
    return basePadding(
      top: _PADDING_V,
      bottom: _PADDING_V,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (program.isPurchased && maybeVod)
            _Fab(
              icon: Icons.comment,
              onPressed: () => _onClickCommentBtn(context),
            ),
          _Fab(
            icon: Icons.credit_card,
            onPressed: () => _onClickPaymentBtn(context),
          ),
          if (program.handouts.items.isNotEmpty)
            _Fab(
              icon: Icons.text_snippet,
              onPressed: () => _onClickHandoutsBtn(context),
            ),
          _AlertIcon(
            programId: program.id,
            channelId: program.channelId,
            onTapAsCommandOn: () => _onClickAlertAsCommandOn(context),
            onTapAsCommandOff: () async => _onClickAlertAsCommandOff(context),
          ),
          _Fab(
            icon: Icons.share,
            onPressed: () => _onClickShareBtn(context),
          ),
        ],
      ),
    );
  }

  void _onClickShareBtn(BuildContext context) => context
      .read(kPrvViewModelDetail(program.id))
      .commandModal(BtmSheetState.share(shareUrl));

  Future<void> _onClickCommentBtn(BuildContext context) async => context
      .read(kPrvViewModelDetail(program.id))
      .togglePage(const PageSheetModel.comment());

  Future<void> _onClickPaymentBtn(BuildContext context) async => context
      .read(kPrvViewModelDetail(program.id))
      .togglePage(const PageSheetModel.pricing());

  Future<void> _onClickHandoutsBtn(BuildContext context) async => context
      .read(kPrvViewModelDetail(program.id))
      .togglePage(const PageSheetModel.handouts());

  void _onClickAlertAsCommandOn(BuildContext context) {
    final command = BtmSheetState.fcmMenu(program.channelId, program.id);
    context.read(kPrvViewModelDetail(program.id)).commandModal(command);
  }

  Future<void> _onClickAlertAsCommandOff(BuildContext context) async =>
      context.read(kPrvViewModelDetail(program.id)).unSubscribeChannel();
}

@hwidget
Widget _alertIcon(
  BuildContext context, {
  @required String programId,
  @required String channelId,
  @required VoidCallback onTapAsCommandOn,
  @required VoidCallback onTapAsCommandOff,
}) =>
    HiveFcmTopicListenable(
      builder: (context, topic, child) => topic.status(programId, channelId) ==
              const FcmSubscribingStatus.none()
          ? _AlertOff(onTapAsCommandOn: onTapAsCommandOn)
          : _AlertOn(onTapAsCommandOff: onTapAsCommandOff),
    );

@swidget
Widget _alertOff(
  BuildContext context, {
  @required VoidCallback onTapAsCommandOn,
}) =>
    _Fab(
      icon: Icons.add_alert,
      onPressed: onTapAsCommandOn,
    );

@swidget
Widget _alertOn(
  BuildContext context, {
  @required VoidCallback onTapAsCommandOff,
}) =>
    _Fab(
      icon: Icons.notifications,
      onPressed: onTapAsCommandOff,
      fabColor: Theme.of(context).primaryColor,
      iconColor: Colors.white,
    );

@swidget
Widget _fab({
  @required IconData icon,
  Color iconColor = Colors.black,
  Color fabColor,
  VoidCallback onPressed,
}) =>
    RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      constraints: const BoxConstraints(
        minWidth: 36,
        minHeight: 36,
      ),
      fillColor: fabColor ?? Styles.detailFab,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(
          icon,
          size: 24,
          color: iconColor,
        ),
      ),
    );
