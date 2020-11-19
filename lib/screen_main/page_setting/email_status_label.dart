import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListItemEmail extends StatelessWidget {

  final String userEmail;

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
            userEmail,
            style: TextStyles.SETTING_SUBTITLE,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              EmailStatusLabel(isVerified: false),
              const SizedBox(width: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 4,
                ),
                margin: const EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: RichText(
                    maxLines: 1,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                        WidgetSpan(child: SizedBox(width: 4)),
                        TextSpan(
                          text: '連携済',
                          style: TextStyle(
                            height: 1,
                          ),
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
  Widget build(BuildContext context) => Container(
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
      child: Text(text, style: TextStyle(
          color: Colors.white,
          height: 1
      ),),
    ),
  );
}