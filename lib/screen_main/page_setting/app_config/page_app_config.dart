import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util.dart';

part 'page_app_config.g.dart';

const _textStyle = TextStyle(height: 1);

@swidget
Widget pageAppConfig(BuildContext context) => ListView(
    children: [
      // todo implement
      Visibility(
        visible: false,
        child: ListTile(
          leading: const Icon(
            Icons.video_settings,
            color: Colors.white,
          ),
          title: const Text(
            Strings.ITEM_TITLE_MOVIE_QUALITY,
            style: _textStyle,
          ),
          onTap: () async => context.pushPage(const GlobalRoutePath.ossLicense()),
        ),
      ),
      // todo implement
      Visibility(
        visible: false,
        child: ListTile(
          leading: const Icon(
            Icons.video_settings,
            color: Colors.white,
          ),
          title: const Text(
            Strings.ITEM_TITLE_MOVIE_QUALITY_MOBILE,
            style: _textStyle,
          ),
          onTap: () async => context.pushPage(const GlobalRoutePath.ossLicense()),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.local_library,
          color: Colors.white,
        ),
        title: const Text(
          Strings.ITEM_TITLE_OSS_LICENCE,
          style: _textStyle,
        ),
        onTap: () async => context.pushPage(const GlobalRoutePath.ossLicense()),
      ),
      ListTile(
        leading: const Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ),
        title: const Text(
          Strings.ITEM_TITLE_GITHUB,
          style: _textStyle,
        ),
        onTap: () async => Util.launchUrl(context, UrlUtil.URL_GITHUB),
      )
    ],
  );
