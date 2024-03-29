import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_seem.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileTitle extends StatelessWidget {
  const ListTileTitle({
    @required this.title,
    @required this.showEmptyText,
    @required this.isCreditCard,
    Key key,
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.SINGLE_H,
          ),
          Visibility(
            visible: showEmptyText,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: Text(
                '$title${Strings.NO_ITEM_SUFFIX}',
                style: TextStyles.s13TextHSingle(
                  color: Colors.white.withOpacity(.5),//todo extract
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
            context.read(kPrvViewModelSetting).notifySnackMsg(msg),
      );
}
