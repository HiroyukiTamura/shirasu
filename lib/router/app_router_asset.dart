import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/global_app_state.dart';

mixin OnPopPageMixin {

  GlobalKey<NavigatorState> get navigatorKey;

  GlobalAppState get _appState;

  Navigator createNavigator(List<Page> pages) => Navigator(
      key: navigatorKey,
      pages: pages,
      onPopPage: _onPopPage,
    );

  bool _onPopPage(Route<dynamic> route, dynamic result){
    if (!route.didPop(result)) return false;

    _appState.pop();

    return true;
  }
}
