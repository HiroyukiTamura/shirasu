import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lp/gen/assets.gen.dart';

class TechStack extends StatelessWidget {

  const TechStack();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 96),
          const Heading(heading: Strings.HEADING_TECH_STACK),
          const SizedBox(height: 40),
          Wrap(
            runSpacing: 24,
            children: [
              const _Icon(
                icon: Icon(FontAwesomeIcons.github),
                url: Urls.GITHUB,
              ),
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
              _Icon(
                icon: Assets.svg.logoCrashlytics.svg(),
                url: Urls.FIREBASE_CRASHLYTICS,
              ),
              _Icon(
                icon: Assets.svg.logoHosting.svg(),
                url: Urls.FIREBASE_HOSTING,
              ),
              _Icon(
                icon: Assets.svg.logoAnalytics.svg(),
                url: Urls.FIREBASE_ANALYTICS,
              ),
              const _Icon(
                icon: Icon(
                  FontAwesomeIcons.swift,
                  color: CustomColor.SWIFT,
                ),
                url: Urls.SWIFT,
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
            ],
          ),
        ],
      );
}

class _Icon extends StatelessWidget {

  const _Icon({required this.icon, required this.url,});

  final Widget icon;
  final String url;

  @override
  Widget build(BuildContext context) => IconButton(
      iconSize: 48,
      icon: icon,
      onPressed: () async {
        if (await canLaunch(url)) await launch(url);
      },
    );
}