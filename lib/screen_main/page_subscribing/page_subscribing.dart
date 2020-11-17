import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_subscribing/watch_history_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final subscribingViewModelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelSubscribing>(
        (_) => ViewModelSubscribing());

class PageSubscribingInMainScreen extends StatefulWidget {
  const PageSubscribingInMainScreen({Key key}) : super(key: key);

  @override
  _PageSubscribingInMainScreenState createState() =>
      _PageSubscribingInMainScreenState();
}

class _PageSubscribingInMainScreenState
    extends State<PageSubscribingInMainScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) async => context.read(subscribingViewModelProvider).setUpData());
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              toolbarHeight: 0,
              floating: true,
              bottom: TabBar(
                tabs: [
                  Tab(text: Strings.TAB_SUBSCRIBING),
                  Tab(text: Strings.TAB_MY_LIST),
                  Tab(text: Strings.TAB_WATCH_HISTORY),
                ],
              ),
            )
          ],
          body: Container(
            child: TabBarView(
              children: [
                Container(),
                Container(),
                WatchHistoryWidget(),
              ],
            ),
          ),
        ),
      );
}
