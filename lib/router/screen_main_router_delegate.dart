import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/no_animation_page.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/screen_main/page_list/page_subscribing.dart';
import 'package:shirasu/router/on_pop_page_mixin.dart';

class ScreenMainRouterDelegate
    extends CommonRouterDelegate<PathDataMainPageBase> {
  ScreenMainRouterDelegate(Reader reader)
      : super(GlobalKey<NavigatorState>(), reader);

  @override
  Widget build(BuildContext context) {
    final path = appState?.findLastMainPagePath;

    if (path == null) return const SizedBox.shrink();

    final screen = path.when(
      dashboard: () => const PageDashboardInMainScreen(),
      subscribing: (initialPage) =>
          PageListInMainScreen(initialPage: initialPage),
      setting: () => const PageSettingInMainScreen(),
      search: () => const PageSearchInMainScreen(),
    );

    final page = NoAnimationPage(
      key: ValueKey(path.pageIndex),
      child: screen,
    );

    return createNavigator([page]);
  }

  @override
  Future<void> setNewRoutePath(PathDataMainPageBase configuration) async =>
      throw Exception("don't setNewRoutePath $configuration");

  int get pageIndex => appState.findLastMainPagePath?.pageIndex;

  PathDataMainPageBase get page => appState.findLastMainPagePath;

  Future<void> swapPage(int index) async {
    final path = PathDataMainPageBase.fromIndex(index);
    appState.push(path);
  }

  @override
  Future<bool> popRoute() => kickPopRoute(() async => false);
}
