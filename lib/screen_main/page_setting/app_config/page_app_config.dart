import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util.dart';

part 'page_app_config.g.dart';

@swidget
Widget pageAppConfig(BuildContext context) => ListView(
    children: [
      ListTile(
        title: const Text(Strings.ITEM_TITLE_OSS_LICENCE),
        onTap: () async => context.pushPage(const GlobalRoutePath.ossLicense()),
      ),
      ListTile(
        title: const Text(Strings.ITEM_TITLE_GITHUB),
        onTap: () async => Util.launchUrl(context, UrlUtil.URL_GITHUB),
      )
    ],
  );
