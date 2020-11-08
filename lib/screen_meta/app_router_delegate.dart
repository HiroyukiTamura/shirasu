import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_dashboard/screen_dashboard.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_meta/screen_meta.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final List<_AppRoutePathData> _pathDataList = [const AppRoutePathDashBoard()];

  @override
  Widget build(BuildContext context) {
    final pageList = _pathDataList
        .map<Widget>((pathData) {
          if (pathData is AppRoutePathIntro) {
            throw UnimplementedError('intro screen');
          } else if (pathData is AppRoutePathDashBoard ||
              pathData is AppRoutePathUnknown) {
            return ScreenMeta();
          } else if (pathData is AppRoutePathChannel) {
            return ScreenChannel();
          } else if (pathData is AppRoutePathDetail) {
            return ScreenDetail(id: pathData.id);
          } else
            throw UnimplementedError('error screen');
        })
        .map((screen) => MaterialPage(child: screen))
        .toList();

    return Navigator(
      key: navigatorKey,
      pages: pageList,
      onPopPage: (route, result) {
        if (!route.didPop(result))
          return false;

        //todo handle error
        notifyListeners();

        return true;
      },
    );
  }

  //todo more business logic
  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async {
    if (_pathDataList.isNotEmpty && _pathDataList.last is AppRoutePathError)
      _pathDataList.removeLast();

    _pathDataList.add(configuration.data);
  }

  @override
  AppRoutePath get currentConfiguration {
    final pathData = _pathDataList.isEmpty ? AppRoutePath.dashBoard().data : _pathDataList.last;
    return AppRoutePath._(pathData);
  }
}

class AppRoutePath {
  AppRoutePath._(this.data);

  factory AppRoutePath.unknown() => AppRoutePath._(const AppRoutePathUnknown());

  factory AppRoutePath.dashBoard() =>
      AppRoutePath._(const AppRoutePathDashBoard());

  factory AppRoutePath.error() => AppRoutePath._(const AppRoutePathError());

  factory AppRoutePath.channel(String channelId) =>
      AppRoutePath._(AppRoutePathChannel(channelId));

  factory AppRoutePath.detail(String channelId, String tenantId, String ymd) =>
      AppRoutePath._(AppRoutePathDetail(channelId, tenantId, ymd));

  factory AppRoutePath.detailByProgramId(String programId) {
    final list = programId.split('-');
    return AppRoutePath._(AppRoutePathDetail(list[0], list[1], list[2]));
  }

  factory AppRoutePath.intro() => AppRoutePath._(const AppRoutePathIntro());

  final _AppRoutePathData data;
}

abstract class _AppRoutePathData {
  const _AppRoutePathData();
}

class AppRoutePathUnknown extends _AppRoutePathData {
  const AppRoutePathUnknown();
}

class AppRoutePathDashBoard extends _AppRoutePathData {
  const AppRoutePathDashBoard();
}

class AppRoutePathError extends _AppRoutePathData {
  const AppRoutePathError();
}

class AppRoutePathIntro extends _AppRoutePathData {
  const AppRoutePathIntro();
}

class AppRoutePathChannel extends _AppRoutePathData {
  AppRoutePathChannel(this.channelId);

  final String channelId;
}

class AppRoutePathDetail extends _AppRoutePathData {
  AppRoutePathDetail(this.channelId, this.tenantId, this.programIdFragment)
      : id = '$channelId-$tenantId-$programIdFragment';

  final String channelId;
  final String tenantId;
  final String programIdFragment;
  final String id;
}
