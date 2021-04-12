import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/util.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'section_dev_resource.g.dart';

const double _kIconSize = 36;

@swidget
Widget sectionDevResource() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 96),
      const Heading(heading: Strings.HEADING_DEV_RESOURCE),
      const SizedBox(height: 40),
      Wrap(
        children: [
          const _Button(
            icon: Icon(
              FontAwesomeIcons.github,
              color: Colors.white,
              size: _kIconSize,
            ),
            label: Strings.GITHUB,
            url: Urls.REPO_GITHUB,
          ),
          _Button(
            icon: Assets.svg.logoFigma.svg(
              height: _kIconSize,
              width: _kIconSize,
            ),
            label: Strings.FIGMA,
            url: Urls.REPO_FIGMA,
          ),
          _Button(
            icon: Assets.svg.logoJira.svg(
              height: _kIconSize,
              width: _kIconSize,
            ),
            label: Strings.JIRA,
            url: Urls.REPO_JIRA,
          ),
        ],
      ),
    ],
  );
}

@swidget
Widget _button({
  required Widget icon,
  required String label,
  required String url,
}) {
  return TextButton.icon(
    icon: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: icon,
    ),
    onPressed: () async => launchUrl(url),
    label: Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        label,
        style: Styles.BUTTON_DEV_RESOURCE,
      ),
    ),
  );
}
