import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_main_route_path.freezed.dart';

class GlobalRoutePathBase {
  static Result wrappedWhen<Result extends Object>(
    GlobalRoutePathBase routePath, {
    Result Function() intro,
    Result Function() error,
    Result Function(String channelId) channel,
    Result Function(String programId) program,
    Result Function() dashboard,
    Result Function() subscribing,
    Result Function() setting,
  }) {
    if (routePath is GlobalRoutePath)
      return routePath.when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
      );
    else if (routePath is PathDataMainPageBase)
      return routePath.when(
        dashboard: dashboard,
        subscribing: subscribing,
        setting: setting,
      );
    else
      throw UnimplementedError(
          'unexpected routePath type: ${routePath.runtimeType}');
  }
}

@freezed
abstract class GlobalRoutePath with _$GlobalRoutePath, GlobalRoutePathBase {
  const factory GlobalRoutePath.intro() = PathDataIntro;

  const factory GlobalRoutePath.error() = PathDataError;

  const factory GlobalRoutePath.channel(String channelId) = PathDataChannel;

  const factory GlobalRoutePath.program(String programId) = PathDataProgram;

  factory GlobalRoutePath.program2(
          String channelId, String tenantId, String programIdFragment) =>
      GlobalRoutePath.program('$channelId-$tenantId-$programIdFragment');
}

@freezed
abstract class PathDataMainPageBase
    with _$PathDataMainPageBase, GlobalRoutePathBase {
  const factory PathDataMainPageBase.dashboard() = PathDataMainPageDashBoard;

  const factory PathDataMainPageBase.subscribing() =
      PathDataMainPageSubscribing;

  const factory PathDataMainPageBase.setting() = PathDataMainPageSetting;
}

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
    if (last is PathDataError || last is PathDataIntro) _list.removeLast();

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
