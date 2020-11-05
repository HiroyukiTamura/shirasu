import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_dashboard/screen_dashboard.dart';

final routeProvider = ChangeNotifierProvider<_RouteState>((ref) {
  return _RouteState();
});


class _RouteState extends ChangeNotifier {

  _RouteState(): super();

  final List<MaterialPage> pageList = [MaterialPage(child: ScreenDashboard())];

  void push(MaterialPage materialPage) {
    pageList.add(materialPage);
    notifyListeners();
  }
}

class ScreenMeta extends ConsumerWidget {

  @override
  Widget build(BuildContext context, T Function<T>(ProviderBase<Object, T> provider) watch) {
    final pageList = watch(routeProvider).pageList;
    return Scaffold(
        body: SafeArea(
          child: Navigator(
            pages: pageList,
            onPopPage: (route, result) => route.didPop(result),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.6),
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: Strings.NAV_ITEM_HOME,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_rounded),
              label: Strings.NAV_ITEM_SUBSCRIBE,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: Strings.NAV_ITEM_SEARCH,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: Strings.NAV_ITEM_CONFIG,
            ),
          ],
        ),
      );
  }
}
