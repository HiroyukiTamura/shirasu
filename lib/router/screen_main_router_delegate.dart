import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    final screen = _appState.findLastMainPagePath.when(
      dashboard: () => const PageDashboardInMainScreen(),
      subscribing: (SubscribingTabPage initialPage) => PageSubscribingInMainScreen(initialPage: initialPage),
      setting: () => const PageSettingInMainScreen(),
    );

    final page = MaterialPage(
      key: ValueKey(screen.runtimeType.toString()),
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
  Future<void> setNewRoutePath(PathDataMainPageBase configuration) async => throw Exception("don't setNewRoutePath $configuration");

  @override
  PathDataMainPageBase get currentConfiguration => _appState.findLastMainPagePath.when(
      dashboard: () => const PathDataMainPageBase.dashboard(),
      subscribing: (initialPage) => PathDataMainPageBase.subscribing(initialPage),
      setting: () => const PathDataMainPageBase.setting(),
    );

// @override
// AppRoutePath get currentConfiguration {
//   final pathData = _pathDataList.isEmpty
//       ? AppRoutePath.screenMain().data
//       : _pathDataList.last;
//   return AppRoutePath._(pathData);
// }
//
// Future<void> pushPage(AppRoutePath path) async {
//   setNewRoutePath(path);
//   notifyListeners();
// }
}
