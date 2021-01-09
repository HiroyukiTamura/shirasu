import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  ScreenMainRouterDelegate(GlobalAppState appState)
      : navigatorKey = GlobalKey<NavigatorState>() {
    _appState = appState..addListener(notifyListeners);
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  GlobalAppState get appState => _appState;
  GlobalAppState _appState;

  set appState(GlobalAppState value) {
    if (value == _appState) return;

    _appState = value;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _appState.removeListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    final path = _appState.findLastMainPagePath;
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

  int get pageIndex => _appState.findLastMainPagePath.pageIndex;

  PathDataMainPageBase get page => _appState.findLastMainPagePath;

  Future<void> swapPage(int index) async {
    final path = PathDataMainPageBase.fromIndex(index);
    _appState.push(path);
  }

  @override
  Future<bool> popRoute() => kickPopRoute(() async => false);
}
