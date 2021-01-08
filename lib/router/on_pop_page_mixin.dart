import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/navigation_value_key_handler.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_in_player.dart';

import 'app_router_asset.dart';

class AppRouterDelegate extends RouterDelegate<GlobalRoutePathBase>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<GlobalRoutePathBase>, OnPopPageMixin {
  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    appState.addListener(notifyListeners);
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final GlobalAppState appState = GlobalAppState();

  @override
  Widget build(BuildContext context) {

    final page = MaterialPage(
      key: const ValueKey(NavigationValueKeyHandler.KEY_IN_PLAYER),
      child: ScreenInPlayer(appState: appState),
    );

    return createNavigator([page]);
  }

  @override
  Future<void> setNewRoutePath(GlobalRoutePathBase configuration) async =>
      appState.push(configuration);

  Future<void> pushPage(GlobalRoutePath path) => setNewRoutePath(path);

  Future<void> swapPageInMainScreen(PathDataMainPageBase path) =>
      setNewRoutePath(path);
}
