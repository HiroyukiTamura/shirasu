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

part 'section_tech_stack.g.dart';

@swidget
Widget sectionTechStack() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 96),
      const Heading(heading: Strings.HEADING_TECH_STACK),
      const SizedBox(height: 40),
      Wrap(
        runSpacing: 24,
        children: [
          _Icon(
            icon: Assets.svg.logoFlutter.svg(),
            url: Urls.FLUTTER,
          ),
          _Icon(
            icon: Assets.svg.logoDart.svg(),
            url: Urls.DART,
          ),
          _Icon(
            icon: Assets.svg.logoKotlin.svg(),
            url: Urls.KOTLIN,
          ),
          const _Icon(
            icon: Icon(
              FontAwesomeIcons.swift,
              color: CustomColor.SWIFT,
            ),
            url: Urls.SWIFT,
          ),
          _Icon(
            icon: Assets.svg.logoGraphql.svg(),
            url: Urls.GRAPHQL,
          ),
          _Icon(
            icon: Assets.svg.logoCrashlytics.svg(),
            url: Urls.FIREBASE_CRASHLYTICS,
          ),
          _Icon(
            icon: Assets.svg.logoHosting.svg(),
            url: Urls.FIREBASE_HOSTING,
          ),
          _Icon(
            icon: Assets.svg.logoPerformance.svg(),
            url: Urls.FIREBASE_PERFORMANCE,
          ),
          _Icon(
            icon: Assets.svg.logoAnalytics.svg(),
            url: Urls.FIREBASE_ANALYTICS,
          ),
          const _Icon(
            icon: Icon(FontAwesomeIcons.github),
            url: Urls.GITHUB,
          ),
          _Icon(
            icon: Assets.png.logoGithubActions.image(),
            url: Urls.GITHUB_ACTIONS,
          ),
          _Icon(
            icon: Assets.png.logoGitGuardian.image(),
            url: Urls.GIT_GUARDIAN,
          ),
          _Icon(
            icon: Assets.svg.logoJira.svg(),
            url: Urls.JIRA,
          ),
          _Icon(
            icon: Assets.svg.logoFigma.svg(),
            url: Urls.FIGMA,
          ),
          _Icon(
            icon: Assets.svg.logoPostman.svg(),
            url: Urls.POSTMAN,
          ),
          _Icon(
            icon: Assets.svg.logoAlgolia.svg(),
            url: Urls.POSTMAN,
          ),
          _Icon(
            icon: Assets.svg.logoSentry.svg(),
            url: Urls.SENTRY,
          ),
        ],
      ),
    ],
  );
}

@swidget
Widget _icon({required Widget icon, required String url,}) {
  return IconButton(
    iconSize: 48,
    icon: icon,
    onPressed: () async => launchUrl(url),
  );
}