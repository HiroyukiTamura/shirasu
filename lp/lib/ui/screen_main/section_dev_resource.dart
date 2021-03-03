import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/util.dart';
import 'package:lp/gen/assets.gen.dart';

class SectionDevResource extends StatelessWidget {
  const SectionDevResource();

  static const double _ICON_SIZE = 36;

  @override
  Widget build(BuildContext context) => Column(
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
                  size: _ICON_SIZE,
                ),
                label: Strings.GITHUB,
                url: Urls.REPO_GITHUB,
              ),
              _Button(
                icon: Assets.svg.logoFigma.svg(
                  height: _ICON_SIZE,
                  width: _ICON_SIZE,
                ),
                label: Strings.FIGMA,
                url: Urls.REPO_FIGMA,
              ),
              _Button(
                icon: Assets.svg.logoJira.svg(
                  height: _ICON_SIZE,
                  width: _ICON_SIZE,
                ),
                label: Strings.JIRA,
                url: Urls.REPO_JIRA,
              ),
            ],
          ),
        ],
      );
}

class _Button extends StatelessWidget {
  const _Button({
    required this.icon,
    required this.label,
    required this.url,
  });

  final Widget icon;
  final String label;
  final String url;

  @override
  Widget build(BuildContext context) => TextButton.icon(
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
