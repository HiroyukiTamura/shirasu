import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

abstract class CommonRouterDelegate<T> extends RouterDelegate<T> with ChangeNotifier {

  CommonRouterDelegate(this.navigatorKey, this.reader) {
    appState.addListener(notifyListeners);
  }

  final GlobalKey<NavigatorState> navigatorKey;

  GlobalAppState get appState => reader(kPrvGlobalAppState);

  final Reader reader;

  @override
  void dispose() {
    super.dispose();
    appState.removeListener(notifyListeners);
  }

  Navigator createNavigator(List<Page> pages) => Navigator(
        key: navigatorKey,
        pages: pages,
        onPopPage: (route, result) => _onPopPage(route, result),
      );

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;

    appState.pop();

    return true;
  }

  Future<bool> kickPopRoute(Future<bool> Function() onFalse) async {
    final last = appState.last;
    if (last is PathDataProgram) {
      final closed = await reader(kPrvViewModelDetail(last.programId)).togglePage(const PageSheetModel.hidden());
      if (closed)
        return true;
    }

    return onFalse();
  }
}