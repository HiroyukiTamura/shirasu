import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_subscribing/watch_history_widget.dart';
import 'package:shirasu/screen_main/page_subscribing/subscribing_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

final subscribingViewModelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelSubscribing>(
        (_) => ViewModelSubscribing());

class PageSubscribingInMainScreen extends StatefulHookWidget {
  const PageSubscribingInMainScreen({Key key}) : super(key: key);

  @override
  _PageSubscribingInMainScreenState createState() =>
      _PageSubscribingInMainScreenState();
}

class _PageSubscribingInMainScreenState
    extends State<PageSubscribingInMainScreen>
    with AfterLayoutMixin<PageSubscribingInMainScreen> {
  static const _TAB_LENGTH = 3;
  static const double _INDICATOR_WIDTH = 24;
  static const double _INDICATOR_RADIUS = 5;

  static const PAGE_INDEX_DEFAULT = PageSubscribingPageIndex.SUBSCRIBING;

  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(subscribingViewModelProvider).setUpData();

  @override
  Widget build(BuildContext context) {
    // we must call useProvider in this build method because we call `context.read` in afterLayout and subscribingViewModelProvider is AutoDispose.
    //
    // - TabBarView's child may cause to dispose its provider when it disappeared.
    // - AutoDispose will dispose its provider when nothing access to it.
    // - And TabBarView initialize every pages asynchronously.
    // so, there is the moment afterLayout called but nothing TabBarView's child is initialized,
    // and then subscribingViewModelProvider shall dispose before we read it!
    useProvider(subscribingViewModelProvider.select((_) => null));

    final tabController =
        useTabController(initialLength: _TAB_LENGTH, initialIndex: 0);
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
                  Tab(text: Strings.TAB_MY_LIST),
                  Tab(text: Strings.TAB_WATCH_HISTORY),
                ],
              )),
      Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            const SubscribingWidget(),
            Container(),
            const WatchHistoryWidget(),
          ],
        ),
      ),
    ]);
  }
}

enum PageSubscribingPageIndex {
  SUBSCRIBING, WATCH_HISTORY
}