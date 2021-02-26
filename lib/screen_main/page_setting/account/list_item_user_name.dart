import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListItemUserName extends HookWidget {
  const ListItemUserName({Key key}) : super(key: key);

  String get userName {
    final attr = useProvider(kPrvHiveAuthUser.select((it) => it?.httpsShirasuIoUserAttribute));
    if (attr == null)
      return '';

    var userName =
        '${attr.familyName} ${attr.givenName}';
    if (attr.familyNameReading?.isNotEmpty == true &&
        attr.givenNameReading?.isNotEmpty == true)
      userName +=
          '(${attr.familyNameReading} ${attr.givenNameReading})';
    return userName;
  }

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: Dimens.SETTING_OUTER_MARGIN, vertical: 8),
        title: const Text(Strings.FULL_NAME_LABEL),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
              ),
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
