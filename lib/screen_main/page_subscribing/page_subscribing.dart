import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_subscribing/watch_history_widget.dart';
import 'package:shirasu/screen_main/page_subscribing/subscribing_widget.dart';
import 'package:shirasu/ui_common/material_tab_view.dart';

class PageSubscribingInMainScreen extends HookWidget {
  PageSubscribingInMainScreen({
    @required SubscribingTabPage initialPage,
    Key key,
  })  : initialIndex = initialPage.index,
        super(key: key);

  static const PAGE_INDEX_DEFAULT = SubscribingTabPage.SUBSCRIBING;
  final int initialIndex;

  @override
  Widget build(BuildContext context) => MaterialTabView(
        tabs: const [
          Tab(text: Strings.TAB_SUBSCRIBING),
          Tab(text: Strings.TAB_WATCH_HISTORY),
        ],
        pages: const [
          SubscribingWidget(),
          WatchHistoryWidget(),
        ],
        initialIndex: initialIndex,
      );
}

enum SubscribingTabPage { SUBSCRIBING, WATCH_HISTORY }
