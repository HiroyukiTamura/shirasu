import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_subscribing/watch_history_widget.dart';
import 'package:shirasu/screen_main/page_subscribing/subscribing_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

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
    extends State<PageSubscribingInMainScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read(subscribingViewModelProvider).setUpData());
  }

  @override
  Widget build(BuildContext context) {
    // we must call useProvider in this build method because we call `context.read` in afterLayout and subscribingViewModelProvider is AutoDispose.
    //
    // - TabBarView's child may cause to dispose its provider when it disappeared.
    // - AutoDispose will be disposed when nothing access to it.
    // - And TabBarView initialize every pages asynchronously.
    // so, there is the moment afterLayout called but nothing TabBarView's child is initialized,
    // and then subscribingViewModelProvider shall dispose before we read it!
    useProvider(subscribingViewModelProvider.select((_) => null));

    final tabController = useTabController(initialLength: 3, initialIndex: 0);
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          toolbarHeight: 0,
          floating: true,
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: Strings.TAB_SUBSCRIBING),
              Tab(text: Strings.TAB_MY_LIST),
              Tab(text: Strings.TAB_WATCH_HISTORY),
            ],
          ),
        )
      ],
      body: Container(
        child: TabBarView(
          controller: tabController,
          children: [
            const SubscribingWidget(),
            Container(),
            const WatchHistoryWidget(),
          ],
        ),
      ),
    );
  }
}
