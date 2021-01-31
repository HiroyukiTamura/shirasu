import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/util.dart';

class BtmSheetCommon extends StatelessWidget {
  const BtmSheetCommon({
    Key key,
    @required this.child,
    @required this.positiveBtnString,
  }) : super(key: key);

  final Widget child;
  final String positiveBtnString;

  @override
  Widget build(BuildContext context) => Padding(
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
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text(
                    Strings.DIALOG_CANCEL,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )),
            const SizedBox(width: 8),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                elevation: 0,
                onPressed: () => Navigator.pop(context, true),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
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
  }) async {
    final result = await showModalBottomSheet<bool>(
      context: context
          .read(screenMainScaffoldProvider)
          .key
          ?.currentContext, //show BottomSheet over BottomNavigationBar
      builder: (context) => BtmSheetCommon(
        positiveBtnString: Strings.OPEN_WEB,
        child: child,
      ),
    );

    if (result == true)
      await Util.launchUrl(context, url, () {
        //todo
        throw UnimplementedError();
      });
    Navigator.pop(context);
  }
}
