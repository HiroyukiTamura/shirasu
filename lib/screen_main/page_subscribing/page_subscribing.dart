import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_subscribing/watch_history_widget.dart';
import 'package:shirasu/screen_main/page_subscribing/subscribing_widget.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class PageSubscribingInMainScreen extends HookWidget {
  PageSubscribingInMainScreen({
    @required SubscribingTabPage initialPage,
    Key key,
  }) : initialIndex = initialPage.index, super(key: key);

  static const PAGE_INDEX_DEFAULT = SubscribingTabPage.SUBSCRIBING;

  static const _TAB_LENGTH = 2;
  static const double _INDICATOR_WIDTH = 24;
  static const double _INDICATOR_RADIUS = 5;

  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final tabController =
    useTabController(initialLength: _TAB_LENGTH, initialIndex: initialIndex);
    return Column(children: [
      LayoutBuilder(
          builder: (context, constrains) => TabBar(
            controller: tabController,
            indicator: MaterialIndicator(
              color: Theme.of(context).accentColor,
              topLeftRadius: _INDICATOR_RADIUS,
              topRightRadius: _INDICATOR_RADIUS,
              bottomLeftRadius: _INDICATOR_RADIUS,
              bottomRightRadius: _INDICATOR_RADIUS,
              horizontalPadding:
              (constrains.maxWidth / _TAB_LENGTH - _INDICATOR_WIDTH) /
                  2,
              strokeWidth: 1,
              tabPosition: TabPosition.bottom,
            ),
            tabs: const [
              Tab(text: Strings.TAB_SUBSCRIBING),
              // Tab(text: Strings.TAB_MY_LIST),
              Tab(text: Strings.TAB_WATCH_HISTORY),
            ],
          )),
      Expanded(
        child: TabBarView(
          controller: tabController,
          children: const [
            SubscribingWidget(),
            // Container(),
            WatchHistoryWidget(),
          ],
        ),
      ),
    ]);
  }
}

enum SubscribingTabPage { SUBSCRIBING, WATCH_HISTORY }
