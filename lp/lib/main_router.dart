import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/model/app_page.dart';
import 'package:lp/ui/screen_main.dart';

class MainRouter extends RouterDelegate<AppPage> with ChangeNotifier {

  MainRouter._();

  final List<AppPage> _list = [const AppPage.main()];

  static final MainRouter instance = MainRouter._();
  static final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) => Navigator(
        key: _key,
        pages: _list
            .map((it) => MaterialPage(
                  key: ValueKey(it.value),
                  child: ScreenMain(),
                ))
            .toList(),
        onPopPage: _onPopPage,
      );

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;

    popRoute();

    return true;
  }

  @override
  Future<bool> popRoute() async {
    if (!_list.isNotEmpty)
      return false;

    _list.removeLast();
    return true;
  }

  @override
  Future<void> setNewRoutePath(AppPage configuration) async {
    if (!_list.contains(configuration)) _list.add(configuration);
  }
}
