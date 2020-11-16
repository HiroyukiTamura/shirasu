import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/screen_main/screen_main.dart';

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
        .map<Widget>((pathData) => GlobalRoutePathBase.wrappedWhen(
              pathData,
              dashboard: () => PageDashboardInMainScreen(appState: _appState),
              subscribing: () => PageSubscribingInMainScreen(appState: _appState,),
              setting: () => throw UnimplementedError(),
              intro: () => ScreenIntro(),
              error: () => throw UnimplementedError(),
              channel: (channelId) => ScreenChannel(channelId: channelId),
              program: (programId) => ScreenDetail(id: programId),
            ))
        .map((screen) => MaterialPage(
              key: ValueKey(screen.runtimeType.toString()),
              child: screen,
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

  //
  // //todo more business logic and refactoring
  // @override
  // Future<void> setNewRoutePath(AppRoutePath configuration) async {
  //   if (_pathDataList.isNotEmpty && _pathDataList.last is AppRoutePathError)
  //     _pathDataList.removeLast();
  //
  //   if (_pathDataList.any((it) =>
  //           it is AppRoutePathScreenMain || it is AppRoutePathUnknown) &&
  //       (configuration.data is AppRoutePathScreenMain ||
  //           configuration.data is AppRoutePathUnknown)) {
  //     while (true) {
  //       if (_pathDataList.last is AppRoutePathScreenMain ||
  //           _pathDataList.last is AppRoutePathUnknown) break;
  //       _pathDataList.removeLast();
  //     }
  //     return;
  //   }
  //
  //   _pathDataList.add(configuration.data);
  // }

  Future<void> pushPage(GlobalRoutePath path) => setNewRoutePath(path);
}

// class AppRoutePath {
//   AppRoutePath._(this.data);
//
//   factory AppRoutePath.unknown() => AppRoutePath._(const AppRoutePathUnknown());
//
//   factory AppRoutePath.screenMain() =>
//       AppRoutePath._(const AppRoutePathScreenMain());
//
//   factory AppRoutePath.error() => AppRoutePath._(const AppRoutePathError());
//
//   factory AppRoutePath.channel(String channelId) =>
//       AppRoutePath._(AppRoutePathChannel(channelId));
//
//   factory AppRoutePath.detail(String channelId, String tenantId, String ymd) =>
//       AppRoutePath._(AppRoutePathDetail(channelId, tenantId, ymd));
//
//   factory AppRoutePath.detailByProgramId(String programId) {
//     final list = programId.split('-');
//     return AppRoutePath._(AppRoutePathDetail(list[0], list[1], list[2]));
//   }
//
//   factory AppRoutePath.intro() => AppRoutePath._(const AppRoutePathIntro());
//
//   final _AppRoutePathData data;
// }
