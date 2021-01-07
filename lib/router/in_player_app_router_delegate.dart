import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/router/app_router_asset.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/navigation_value_key_handler.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_auth/screen_auth.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/screen_oss_licence/screen_oss_licence.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:tuple/tuple.dart';

class InPlayerAppRouterDelegate extends RouterDelegate<GlobalRoutePathBase>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<GlobalRoutePathBase>,
        OnPopPageMixin {
  InPlayerAppRouterDelegate(GlobalAppState appState, TickerProvider vsync)
      : pam = PlayerAnimationManager(vsync),
        navigatorKey = GlobalKey<NavigatorState>() {
    _appState = appState;
  }

  final PlayerAnimationManager pam;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  GlobalAppState get appState => _appState;

  set appState(GlobalAppState value) {
    if (value == _appState) return;

    _appState = value;
    notifyListeners();
  }

  GlobalAppState _appState;

  @override
  void dispose() {
    super.dispose();
    pam.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageList = _appState.list
        .map<Tuple2<String, Widget>>((pathData) {
          final screen = GlobalRoutePathBase.wrappedWhenRough(
            pathData,
            intro: () => ScreenIntro(),
            error: () => throw UnimplementedError(),
            channel: (channelId) => ScreenChannel(channelId: channelId),
            program: (programId) => throw UnsupportedError('dont throw '),
            //todo
            ossLicense: () => const ScreenOssLicense(),
            auth: () => const ScreenAuth(),
            mainPage: () => PageDashboardInMainScreen(
              appState: _appState,
              pam: pam,
            ),
          );
          final location = NavigationValueKeyHandler.getValueKey(pathData);
          return Tuple2(location, screen);
        })
        .map((tuple) => MaterialPage(
              key: ValueKey(tuple.item1),
              child: tuple.item2,
            ))
        .toList();

    return createNavigator(pageList);
  }

  @override
  Future<void> setNewRoutePath(GlobalRoutePathBase configuration) async =>
      throw Exception("don't setNewRoutePath $configuration");
}
