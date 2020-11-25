import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class ListTileLoadMore extends HookWidget {

  const ListTileLoadMore({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      child: TextButton(
        onPressed: () async => context
            .read(appRouterProvider)
            .delegate
            .swapPageInMainScreen(const PathDataMainPageBase.subscribing()),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            Strings.WATCH_MORE,
            style: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
}
