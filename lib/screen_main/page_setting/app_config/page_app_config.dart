import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'page_app_config.g.dart';

@swidget
Widget pageAppConfig(BuildContext context) => ListView(
      children: [
        // todo implement
        Visibility(
          visible: false,
          child: _ListItem(
            icon: Icons.video_settings,
            title: Strings.ITEM_TITLE_MOVIE_QUALITY,
            onTap: () {},
          ),
        ),
        // todo implement
        Visibility(
          visible: false,
          child: _ListItem(
            icon: Icons.video_settings,
            title: Strings.ITEM_TITLE_MOVIE_QUALITY_MOBILE,
            onTap: () {},
          ),
        ),
        _ListItem(
          icon: Icons.logout,
          title: Strings.ITEM_TITLE_LOGOUT,
          onTap: () async =>
              context.read(kPrvViewModelSetting).clearHiveAuth(),
        ),
        _ListItem(
          icon: Icons.image,
          title: Strings.ITEM_TITLE_IMAGE_LICENCE,
          onTap: () async =>
              context.pushPage(const GlobalRoutePath.imgLicense()),
        ),
        _ListItem(
          icon: Icons.local_library,
          title: Strings.ITEM_TITLE_OSS_LICENCE,
          onTap: () async =>
              context.pushPage(const GlobalRoutePath.ossLicense()),
        ),
        _ListItem(
          icon: FontAwesomeIcons.github,
          title: Strings.ITEM_TITLE_GITHUB,
          onTap: () async => Util.launchUrl(
            context,
            UrlUtil.URL_GITHUB,
            () => context
                .read(kPrvViewModelSetting)
                .notifySnackMsg(const SnackMsg.unknown()),
          ),
        )
      ],
    );

@swidget
Widget _listItem(
  BuildContext context, {
  @required IconData icon,
  @required String title,
  @required VoidCallback onTap,
}) =>
    ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyles.SINGLE_H,
      ),
      onTap: onTap,
    );
