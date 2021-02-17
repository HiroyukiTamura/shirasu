import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/btm_sheet/btm_sheet_sns_share.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/ui_util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

import '../util.dart';

class BtmSheetCommon extends StatelessWidget {
  const BtmSheetCommon._({
    Key key,
    @required this.child,
    @required this.positiveBtnString,
    @required this.url,
    @required this.snackCallback,
  }) : super(key: key);

  final Widget child;
  final String positiveBtnString;
  final String url;
  final SnackCallback snackCallback;

  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
          bottom: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            child,
            const SizedBox(height: 12),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    Strings.DIALOG_CANCEL,
                    style: TextStyle(
                      color: Theme
                          .of(context)
                          .primaryColorDark,
                    ),
                  ),
                )),
            const SizedBox(width: 8),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                elevation: 0,
                onPressed: () async {
                  Navigator.pop(context);
                  await Util.launchUrl(context, url,
                          () => snackCallback(const SnackMsg.unknown()));
                },
                color: Theme
                    .of(context)
                    .primaryColorDark,
                shape: RoundedRectangleBorder(
                  borderRadius: kCircleBorderRadius,
                ),
                child: Text(positiveBtnString),
              ),
            ),
          ],
        ),
      );

  static Future<void> showUrlLauncherBtmSheet({
    @required BuildContext context,
    @required String url,
    String positiveBtnString = Strings.OPEN_WEB,
    @required Widget child,
    @required SnackCallback snackCallback,
  }) async =>
      showModalBottomSheet(
          context: Scaffold
              .of(context)
              .context,
          builder: (context) =>
              BtmSheetCommon._(
                positiveBtnString: Strings.OPEN_WEB,
                snackCallback: snackCallback,
                url: url,
                child: child,
              ),
      );
}
