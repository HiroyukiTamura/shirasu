import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:dartx/dartx.dart';

final kPrvGlobalAppState =
    Provider<GlobalAppState>((ref) => GlobalAppState.instance(ref.read));

// todo synchronize?
class GlobalAppState extends ChangeNotifier {
  GlobalAppState._(this._reader);

  // todo can delete
  factory GlobalAppState.instance(Reader reader) => GlobalAppState._(reader);

  List<GlobalRoutePathBase> _list = [];

  final Reader _reader;

  HiveAuthRepository get _hiveAuthRepository => _reader(kPrvHiveAuthRepository);

  HivePrefRepository get _hivePrefRepository => _reader(kPrvHivePrefRepository);

  GlobalRoutePathBase get last => list.last;

  PathDataMainPageBase get findLastMainPagePath => list.firstOrNullWhere(
        (it) => it is PathDataMainPageBase,
      );

  bool get _isLoggedOut => _hiveAuthRepository.isEmpty;

  bool get _isInitialLaunch => _hivePrefRepository.isInitialLaunchApp;

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
    if (last == path) return;

    if (path == const GlobalRoutePath.preLogin()) {
      _list = [const GlobalRoutePath.preLogin()];
      notifyListeners();
      return;
    }

    if (path == const GlobalRoutePath.auth()) {
      _list = [const GlobalRoutePath.preLogin(), path];
      notifyListeners();
      return;
    }

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
