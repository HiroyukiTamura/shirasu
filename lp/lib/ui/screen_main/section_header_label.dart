import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/util.dart';

class SectionHeaderLabel extends StatelessWidget {
  const SectionHeaderLabel();

  static const double HEIGHT = 96;

  @override
  Widget build(BuildContext context) => Container(
        height: HEIGHT,
        padding: const EdgeInsets.symmetric(horizontal: 96),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.github),
              onPressed: () async => launchUrl(Urls.REPO_GITHUB),
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.twitter),
              onPressed: () async => launchUrl(Urls.SHARE_TWITTER),
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.line),
              onPressed: () async => launchUrl(Urls.SHARE_LINE),
            ),
          ],
        ),
      );
}
