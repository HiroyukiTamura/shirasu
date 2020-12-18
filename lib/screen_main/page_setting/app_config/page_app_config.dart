import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class PageAppConfig extends StatelessWidget {
  const PageAppConfig({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          ListTile(
            title: const Text(Strings.ITEM_TITLE_OSS_LICENCE),
            onTap: () async => _onTapOssLicenceItem(context),
          )
        ],
      );

  //todo use navigation API, fix layout
  Future<void> _onTapOssLicenceItem(BuildContext context) async => context
        .read(appRouterProvider)
        .delegate
        .pushPage(const GlobalRoutePath.ossLicense());
}
