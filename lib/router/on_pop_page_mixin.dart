import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';

mixin OnPopPageMixin<T> on RouterDelegate<T> {
  GlobalKey<NavigatorState> get navigatorKey;

  GlobalAppState get appState;

  Navigator createNavigator(List<Page> pages) =>
      Navigator(
        key: navigatorKey,
        pages: pages,
        onPopPage: (route, result) => _onPopPage(route, result),
      );

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;

    appState.pop();

    return true;
  }
}

mixin PlayerPopRouteMixin<T> on RouterDelegate<T> {

  GlobalKey<NavigatorState> get navigatorKey;

  ProviderReference get ref;

  Future<bool> kickPopRoute(Future<bool> Function() onFalse) async {
    final last = GlobalAppState.instance.last;
    if (last is PathDataProgram) {
      final closed = await ref.read(detailSNProvider(last.programId)).tryClosePanel();
      if (closed)
        return true;
    }

    return onFalse();
  }
}
