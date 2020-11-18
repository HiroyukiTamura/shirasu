import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';

class ListTileUserName extends StatelessWidget {
  const ListTileUserName({
    Key key,
    @required this.firstName,
    @required this.familyName,
    @required this.firstNameReadable,
    @required this.familyNameReadable,
  }) : super(key: key);

  static const MAIN_TEXT_STYLE = TextStyle(
    height: 1,
    color: Colors.white,
    fontSize: 16,
  );

  final String firstName;
  final String familyName;
  final String firstNameReadable;
  final String familyNameReadable;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTileTitle(title: Strings.FULL_NAME_LABEL),
            Row(
              children: [
                _rowItem(
                  name: familyName,
                  readableName: familyNameReadable,
                ),
                const SizedBox(width: 16),
                _rowItem(
                  name: firstName,
                  readableName: firstNameReadable,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              Strings.FULL_NAME_NOTICE,
              style: TextStyle(
                height: 1.3,
                color: Styles.colorTextSub,
              ),
            )
          ],
        ),
      );

  static Widget _rowItem({
    @required String name,
    @required String readableName,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            readableName,
            style: TextStyle(
              height: 1,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            name,
            style: MAIN_TEXT_STYLE,
          ),
        ],
      );
}
