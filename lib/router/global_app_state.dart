import 'package:flutter/widgets.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

// todo synchronize?
class GlobalAppState extends ChangeNotifier {
  GlobalAppState._();

  static final instance = GlobalAppState._();

  List<GlobalRoutePathBase> _list = [];

  GlobalRoutePathBase get last => list.last;

  PathDataMainPageBase get findLastMainPagePath =>
      list.firstWhere((it) => it is PathDataMainPageBase)
          as PathDataMainPageBase;

  bool get _isLoggedOut => HiveAuthClient.instance().isEmpty;

  bool get _isInitialLaunch =>
      HivePrefectureClient.instance().isInitialLaunchApp;

  List<GlobalRoutePathBase> get list {
    if (_isInitialLaunch) return _list = [const GlobalRoutePath.intro()];

    if (_list.isEmpty) {
      if (_isLoggedOut) {
        return _list = [const GlobalRoutePath.preLogin()];
      }
      _list = [const PathDataMainPageBase.dashboard()];
    }

    return _list;
  }

  //todo fix
  void push(GlobalRoutePathBase path) {
    if (last == const GlobalRoutePath.auth() &&
        path == const GlobalRoutePath.auth()) return;

    if (last == const GlobalRoutePath.auth() && path is PathDataError)
      _list.removeLast();

    if (last is PathDataError || last == const GlobalRoutePath.intro())
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

  void reset() {
    _list.clear();
    notifyListeners();
  }
}
