import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_seem.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileTitle extends StatelessWidget {
  const ListTileTitle({
    Key key,
    @required this.title,
    @required this.showEmptyText,
    @required this.isCreditCard,
  }) : super(key: key);

  final String title;
  final bool showEmptyText;
  final bool isCreditCard;
  static const double _PADDING_VERTICAL = 8;

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: isCreditCard
            ? ListTileSeem.SEEM_PADDING + _PADDING_VERTICAL
            : _PADDING_VERTICAL,
      ), //todo extract to dimens
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.SETTING_COMPONENT_TITLE,
          ),
          Visibility(
            visible: showEmptyText,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: Text(
                '$title${Strings.NO_ITEM_SUFFIX}',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(.5),
                  height: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return isCreditCard
        ? InkWell(
            onTap: () async => _onTapCreditCard(context),
            child: content,
          )
        : content;
  }

  Future<void> _onTapCreditCard(BuildContext context) async =>
      BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.URL_ACCOUNT,
        child: const Text(Strings.BTM_SHEET_MSG_CREDIT_CARD),
        snackCallback: (msg) =>
            context.read(kPrvMainSnackBarMsgNotifier).notifyMsg(msg, false),
      );
}
