import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';

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

  Future<bool> kickPopRoute(Future<bool> Function() onFalse) async {
    final context = navigatorKey.currentContext;
    final detailIdState = context.read(pDetailId);

    if (detailIdState.state == null) return onFalse();

    if (PlayerAnimationManager.instance?.status == PlayerStatus.EXPANDED) {
      final closed = await context.read(detailSNProvider).tryClosePanel();
      if (closed) return true;

      PlayerAnimationManager.instance.collapse();
      return true;
    }

    return onFalse();
  }
}
