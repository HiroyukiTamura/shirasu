import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/model/auth_data.dart';

class ListItemEmail extends StatelessWidget {
  ListItemEmail({Key key, @required this.user})
      : authSnsIcon = _getAuthFontIcon(user),
        super(key: key);

  final User user;
  final IconData authSnsIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: Dimens.SETTING_OUTER_MARGIN, vertical: 8),
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

  static IconData _getAuthFontIcon(User user) {
    if (user.sub.contains('google'))
      return FontAwesomeIcons.google;
    else if (user.sub.contains('twitter'))
      return FontAwesomeIcons.facebook;
    else if (user.sub.contains('facebook'))
      return FontAwesomeIcons.twitter;
    else if (user.sub.startsWith('auth0|'))
      return null;
    else
      throw Exception('unexpected `user.sub` value: ${user.sub}');
  }
}

class EmailStatusLabel extends StatelessWidget {
  EmailStatusLabel({Key key, @required this.isVerified})
      : text = isVerified ? Strings.EMAIL_VERIFIED : Strings.EMAIL_NOT_VERIFIED,
        color = isVerified ? Colors.white.withOpacity(.8) : Colors.red.shade900,
        super(key: key);

  final bool isVerified;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    if (isVerified)
      return Container(
        margin: const EdgeInsets.only(top: 4),
        child: Row(
          children: [
            const Icon(
              Icons.check,
              color: Colors.blueAccent,
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
      );
    else
      return Container(
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
}
