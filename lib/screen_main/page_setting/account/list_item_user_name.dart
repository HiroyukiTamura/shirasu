import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

part 'list_item_user_name.g.dart';

@swidget
Widget listItemUserName(User user) {
  String userName =
      '${user.httpsShirasuIoUserAttribute.familyName} ${user.httpsShirasuIoUserAttribute.givenName}';
  if (user.httpsShirasuIoUserAttribute.familyNameReading != null &&
      user.httpsShirasuIoUserAttribute.givenNameReading != null)
    userName +=
    '(${user.httpsShirasuIoUserAttribute.familyNameReading} ${user.httpsShirasuIoUserAttribute.givenNameReading})';

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
            height: 1.3,
            fontSize: 13,
          ),
        )
      ],
    ),
  );
}