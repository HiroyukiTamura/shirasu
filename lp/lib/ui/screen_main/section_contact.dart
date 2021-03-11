import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/util.dart';

class SectionContact extends StatelessWidget {
  const SectionContact();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 96,
          ),
          Heading(heading: Strings.HEADING_CONTACT),
          SizedBox(height: 48),
          _ListButton(
            iconData: Icons.mail,
            url: 'mailto:${Urls.CONTACT_EMAIL}',
            label: Urls.CONTACT_EMAIL,
          ),
          _ListButton(
            iconData: FontAwesomeIcons.twitter,
            url: Urls.CONTACT_TWITTER,
            label: Strings.TWITTER_ID,
          ),
        ],
      );
}

//todo hover color
class _ListButton extends StatelessWidget {
  const _ListButton({
    required this.iconData,
    required this.url,
    required this.label,
  });

  final IconData iconData;
  final String url;
  final String label;

  @override
  Widget build(BuildContext context) => TextButton.icon(
        onPressed: () async => launchUrl(url),
        icon: Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(
            iconData,
            color: CustomColor.TEXT_SUB,
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            top: 16,
            bottom: 16,
          ),
          child: Text(
            label,
            style: Styles.BUTTON_CONTACT,
          ),
        ),
      );
}
