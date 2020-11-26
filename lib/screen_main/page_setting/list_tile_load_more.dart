import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

class ListTileLoadMore extends HookWidget {

  const ListTileLoadMore({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      child: TextButton(
        onPressed: () async {
          const path = PathDataMainPageBase.subscribing(PageSubscribingPageIndex.WATCH_HISTORY);
          return context
            .read(appRouterProvider)
            .delegate
            .swapPageInMainScreen(path);
        },
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
