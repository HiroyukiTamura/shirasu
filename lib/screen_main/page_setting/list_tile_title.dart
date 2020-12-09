import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_seem.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/util.dart';
import 'package:url_launcher/url_launcher.dart';

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
      padding: EdgeInsets.only(
        right: 16,
        left: 16,
        top: isCreditCard
            ? ListTileSeem.SEEM_PADDING + _PADDING_VERTICAL
            : _PADDING_VERTICAL,
        bottom: _PADDING_VERTICAL,
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
        ? InkWell(onTap: () async => _onTapCreditCard(context), child: content)
        : content;
  }

  Future<void> _onTapCreditCard(BuildContext context) async {
    final result = await showModalBottomSheet<bool>(
        context: context
            .read(screenMainScaffoldProvider)
            .currentContext, //show BottomSheet over BottomNavigationBar
        builder: (context) => Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('セキュアな情報を取り扱うので公式のWebページに遷移するよ'),//todo resourcing
                  const SizedBox(height: 12),
                  ButtonBar(
                    layoutBehavior: ButtonBarLayoutBehavior.constrained,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text(Strings.DIALOG_CANCEL),
                      ),
                      const SizedBox(width: 8),
                      RaisedButton(//todo styling
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text(Strings.OPEN_WEB),
                      )
                    ],
                  ),
                ],
              ),
            ));

    if (result == true)
      await Util.launchUrl(context, UrlUtil.URL_ACCOUNT);
  }
}
