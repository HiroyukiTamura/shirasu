import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'email_status_label.g.dart';

@hwidget
Widget listItemEmail(BuildContext context) {
  final user = useProvider(kPrvHiveAuthRepository
      .select((it) => it.authData?.body?.decodedToken?.user));
  final authSnsIcon = user.toAuthIcon();
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: Dimens.SETTING_OUTER_MARGIN,
      vertical: 8,
    ),
    title: const Text(Strings.MAIL_ADDRESS),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.email,
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            EmailStatusLabel(isVerified: user.emailVerified),
            if (authSnsIcon != null)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 4,
                ),
                margin: const EdgeInsets.only(top: 4, left: 16),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: RichText(
                    maxLines: 1,
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Icon(
                            authSnsIcon,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 4)),
                        const TextSpan(
                          text: Strings.AUTH_SYNC_CHECKED,
                          style: TextStyles.SINGLE_H,
                        )
                      ],
                    )),
              ),
          ],
        )
      ],
    ),
  );
}

extension on HiveUser {
  IconData toAuthIcon() {
    if (sub.contains('google'))
      return FontAwesomeIcons.google;
    else if (sub.contains('twitter'))
      return FontAwesomeIcons.facebook;
    else if (sub.contains('facebook'))
      return FontAwesomeIcons.twitter;
    else if (sub.startsWith('auth0|'))
      return null;
    else
      throw ArgumentError.value(sub);
  }
}

class EmailStatusLabel extends StatelessWidget {
  EmailStatusLabel({Key key, @required this.isVerified})
      : text = isVerified ? Strings.EMAIL_VERIFIED : Strings.EMAIL_NOT_VERIFIED,
        color = isVerified ? Styles.labelNormal : Styles.labelCaution,
        super(key: key);

  final bool isVerified;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => isVerified
      ? Container(
          margin: const EdgeInsets.only(top: 4),
          child: Row(
            children: [
              Icon(
                Icons.check,
                color: Theme.of(context).primaryColorDark,
                size: 16,
              ),
              const SizedBox(width: 2),
              Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            ],
          ),
        )
      : Container(
          margin: const EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: color,
            // border: Border.all(
            //   color: color,
            //   width: 1,
            // ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                height: TextHeight.TEXT_H_SINGLE,
              ),
            ),
          ),
        );
}
