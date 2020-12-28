import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/no_animation_page.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

class ScreenMainRouterDelegate extends RouterDelegate<PathDataMainPageBase>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PathDataMainPageBase> {
  ScreenMainRouterDelegate(GlobalAppState appState)
      : navigatorKey = GlobalKey<NavigatorState>() {
    _appState = appState;
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  GlobalAppState get appState => _appState;
  GlobalAppState _appState;

  set appState(GlobalAppState value) {
    if (value == _appState) return;

    _appState = value;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    final path = _appState.findLastMainPagePath;
    final screen = path.when(
      dashboard: () => const PageDashboardInMainScreen(),
      subscribing: (SubscribingTabPage initialPage) =>
          PageSubscribingInMainScreen(initialPage: initialPage),
      setting: () => const PageSettingInMainScreen(),
    );

    final page = NoAnimationPage(
      key: ValueKey(path.pageIndex),
      child: screen,
    );

    return Navigator(
      key: navigatorKey,
      pages: [page],
      onPopPage: (route, result) {
        //todo implement

        // if (!route.didPop(result)) return false;
        //
        // //todo handle error
        // notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(PathDataMainPageBase configuration) async =>
      throw Exception("don't setNewRoutePath $configuration");

  int get pageIndex => _appState.findLastMainPagePath.pageIndex;

  PathDataMainPageBase get page => _appState.findLastMainPagePath;

  Future<void> swapPage(int index) async {
    final path = PathDataMainPageBase.fromIndex(index);
    _appState.push(path);
    notifyListeners();
  }
}
