import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_main_route_path.freezed.dart';

@immutable
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
    implements _$PathDataMainPageBase, GlobalRoutePathBase {

  const factory PathDataMainPageBase.dashboard() = PathDataMainPageDashBoard;

  const factory PathDataMainPageBase.subscribing() =
      PathDataMainPageSubscribing;

  const factory PathDataMainPageBase.setting() = PathDataMainPageSetting;

  factory PathDataMainPageBase.fromIndex(int index) {
    switch(index) {
      case 0:
        return const PathDataMainPageBase.dashboard();
      case 1:
        return const PathDataMainPageBase.subscribing();
      case 2:
        return const PathDataMainPageBase.setting();
      default:
        throw Exception('unexpected index $index');
    }
  }

  const PathDataMainPageBase._();

  int getIndex() => when(dashboard: () => 0, subscribing: () => 1, setting: () => 2);
}
