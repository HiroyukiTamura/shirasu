import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_config_editing/screen_config_editing.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/screen_main/screen_main.dart';
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
    final pageList = _appState.list
        .map<Tuple2<String, Widget>>((pathData) {
          final location = AppRouteInformationParser.restoreLocation(pathData);
          final screen = GlobalRoutePathBase.wrappedWhen(
            pathData,
            dashboard: () => PageDashboardInMainScreen(appState: _appState),
            subscribing: (SubscribingTabPage initialPage) => PageDashboardInMainScreen(appState: _appState),
            setting: () => PageDashboardInMainScreen(appState: _appState),
            intro: () => ScreenIntro(),
            error: () => throw UnimplementedError(),
            channel: (channelId) => ScreenChannel(channelId: channelId),
            program: (programId) => ScreenDetail(id: programId),
            editBirthDate: (BirthDateIntentData data) => ScreenConfigEditing(
              intentData: data,
            ),
          );
          return Tuple2(location, screen);
        })
        .map((tuple) => MaterialPage(
              key: ValueKey(tuple.item1),
              child: tuple.item2,
            ))
        .toList();

    return Navigator(
      key: navigatorKey,
      pages: pageList,
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

  Future<void> swapPageInMainScreen(PathDataMainPageBase path) => setNewRoutePath(path);
}
