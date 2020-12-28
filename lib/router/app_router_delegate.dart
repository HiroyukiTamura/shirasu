import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/navigation_value_key_handler.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_auth/screen_auth.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_in_player.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/screen_oss_licence/screen_oss_licence.dart';
import 'package:tuple/tuple.dart';

class AppRouterDelegate extends RouterDelegate<GlobalRoutePathBase>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<GlobalRoutePathBase> {
  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    _appState.addListener(notifyListeners);
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final GlobalAppState _appState = GlobalAppState();

  @override
  Widget build(BuildContext context) {

    final page = MaterialPage(
      key: const ValueKey(NavigationValueKeyHandler.KEY_IN_PLAYER),
      child: ScreenInPlayer(appState: _appState),
    );

    return Navigator(
      key: navigatorKey,
      pages: [page],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;

        _appState.pop();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(GlobalRoutePathBase configuration) async =>
      _appState.push(configuration);

  Future<void> pushPage(GlobalRoutePath path) => setNewRoutePath(path);

  Future<void> swapPageInMainScreen(PathDataMainPageBase path) =>
      setNewRoutePath(path);
}
