import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListItemUserName extends StatelessWidget {

  const ListItemUserName({Key key, @required this.user}) : super(key: key);

  final User user;

  String get userName {
    String userName =
        '${user.httpsShirasuIoUserAttribute.familyName} ${user.httpsShirasuIoUserAttribute.givenName}';
    if (user.httpsShirasuIoUserAttribute.familyNameReading != null &&
        user.httpsShirasuIoUserAttribute.givenNameReading != null)
      userName +=
      '(${user.httpsShirasuIoUserAttribute.familyNameReading} ${user.httpsShirasuIoUserAttribute.givenNameReading})';
    return userName;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: Dimens.SETTING_OUTER_MARGIN, vertical: 8),
      title: const Text(Strings.FULL_NAME_LABEL),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: TextStyles.SETTING_SUBTITLE,
          ),
          const SizedBox(height: 4),
          const Text(
            Strings.FULL_NAME_NOTICE,
            style: TextStyle(
              height: TextHeight.TEXT_HEIGHT,
              fontSize: FontSize.S13,
            ),
          )
        ],
      ),
    );
  }
}