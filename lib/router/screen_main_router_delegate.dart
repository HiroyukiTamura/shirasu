import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/router/no_animation_page.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

import 'on_pop_page_mixin.dart';

class ScreenMainRouterDelegate extends RouterDelegate<PathDataMainPageBase>
    with
        ChangeNotifier,
        OnPopPageMixin<PathDataMainPageBase>,
        PlayerPopRouteMixin<PathDataMainPageBase> {
  ScreenMainRouterDelegate(this.ref)
      : navigatorKey = GlobalKey<NavigatorState>() {
    GlobalAppState.instance.addListener(notifyListeners);
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  final ProviderReference ref;

  @override
  GlobalAppState get appState => GlobalAppState.instance;

  @override
  void dispose() {
    super.dispose();
    appState.removeListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    final path = appState.findLastMainPagePath;
    final screen = path.when(
      dashboard: () => const PageDashboardInMainScreen(),
      subscribing: (PageListTabPage initialPage) =>
          PageListInMainScreen(initialPage: initialPage),
      setting: () => const PageSettingInMainScreen(),
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

  int get pageIndex => appState.findLastMainPagePath.pageIndex;

  PathDataMainPageBase get page => appState.findLastMainPagePath;

  Future<void> swapPage(int index) async {
    final path = PathDataMainPageBase.fromIndex(index);
    appState.push(path);
  }

  @override
  Future<bool> popRoute() => kickPopRoute(() async => false);
}
