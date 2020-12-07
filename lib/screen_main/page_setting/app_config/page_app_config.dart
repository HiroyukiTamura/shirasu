import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';

class PageAppConfig extends StatelessWidget {

  const PageAppConfig({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => ListView(children: [
      ListTile(title: const Text(Strings.ITEM_TITLE_OSS_LICENCE), onTap: () => _onTapOssLicenceItem(context),)
    ],);

  //todo use navigation API, fix layout
  void _onTapOssLicenceItem(BuildContext context) => showLicensePage(context: context);
}