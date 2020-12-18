import 'package:flutter/widgets.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class GlobalAppState extends ChangeNotifier {
  GlobalAppState();

  List<GlobalRoutePathBase> _list = [];

  GlobalRoutePathBase get last => list.last;

  PathDataMainPageBase get findLastMainPagePath =>
      list.firstWhere((it) => it is PathDataMainPageBase)
      as PathDataMainPageBase;

  List<GlobalRoutePathBase> get list {
    if (_list.isEmpty) _list.add(const PathDataMainPageBase.dashboard());
    return _list;
  }

  void push(GlobalRoutePathBase path) {
    if (last is PathDataAuth && path is PathDataAuth)
      return;

    if (last is PathDataAuth && path is PathDataError)
      _list.removeLast();

    if (last is PathDataError || last is PathDataIntro)
      _list.removeLast();

    if (last is PathDataMainPageBase && path is PathDataMainPageBase)
      _list.removeLast();

    _list.add(path);

    notifyListeners();
  }

  void pop() {
    if (_list.isEmpty) return;

    _list.removeLast();
    notifyListeners();
  }
}