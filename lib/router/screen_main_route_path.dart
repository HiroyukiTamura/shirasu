import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

part 'screen_main_route_path.freezed.dart';

@immutable
abstract class GlobalRoutePathBase {
  const factory GlobalRoutePathBase.redirect2Root() = PathDataMainPageDashBoard;

  static Result wrappedWhen<Result extends Object>(
    GlobalRoutePathBase routePath, {
    @required Result Function() intro,
    @required Result Function() error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() dashboard,
    @required Result Function(PageListTabPage initialPage) subscribing,
    @required Result Function() setting,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() auth,
  }) {
    if (routePath is GlobalRoutePath)
      return routePath.when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
        ossLicense: ossLicense,
        imgLicense: imgLicense,
        auth: auth,
      );
    else if (routePath is PathDataMainPageBase)
      return routePath.when(
        dashboard: dashboard,
        subscribing: subscribing,
        setting: setting,
      );
    else
      throw UnsupportedError(
          'unexpected routePath type: ${routePath.runtimeType}');
  }

  static Result wrappedWhenRough<Result extends Object>(
    GlobalRoutePathBase routePath, {
    @required Result Function() intro,
    @required Result Function() error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() mainPage,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() auth,
  }) {
    if (routePath is PathDataMainPageBase) return mainPage();
    if (routePath is GlobalRoutePath)
      return routePath.when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
        ossLicense: ossLicense,
        auth: auth,
        imgLicense: imgLicense,
      );
    else
      throw UnsupportedError(
          'unexpected routePath type: ${routePath.runtimeType}');
  }

  static Result wrappedWhenType<Result extends Object>(
    GlobalRoutePathBase routePath, {
    @required Result Function() pathDataMainPageBase,
    @required Result Function() globalRoutePath,
  }) {
    if (routePath is PathDataMainPageBase) return pathDataMainPageBase();
    if (routePath is GlobalRoutePath)
      return globalRoutePath();
    else
      throw UnsupportedError(
          'unexpected routePath type: ${routePath.runtimeType}');
  }
}

@freezed
abstract class GlobalRoutePath with _$GlobalRoutePath, GlobalRoutePathBase {
  const factory GlobalRoutePath.intro() = PathDataIntro;

  const factory GlobalRoutePath.error() = PathDataError;

  const factory GlobalRoutePath.channel(String channelId) = PathDataChannel;

  const factory GlobalRoutePath.program(String programId) = PathDataProgram;

  const factory GlobalRoutePath.ossLicense() = PathDataOssLicense;

  const factory GlobalRoutePath.imgLicense() = PathDataImgLicense;

  const factory GlobalRoutePath.auth() = PathDataAuth;

  factory GlobalRoutePath.buildProgram({
    @required String channelId,
    @required String tenantId,
    @required String programIdFragment,
  }) =>
      GlobalRoutePath.program('$channelId-$tenantId-$programIdFragment');
}

@freezed
abstract class PathDataMainPageBase
    implements _$PathDataMainPageBase, GlobalRoutePathBase {
  const factory PathDataMainPageBase.dashboard() = PathDataMainPageDashBoard;

  const factory PathDataMainPageBase.subscribing(PageListTabPage index) =
      PathDataMainPageSubscribing;

  const factory PathDataMainPageBase.setting() = PathDataMainPageSetting;

  factory PathDataMainPageBase.fromIndex(int index) {
    switch (index) {
      case 0:
        return const PathDataMainPageBase.dashboard();
      case 1:
        return const PathDataMainPageBase.subscribing(
            PageListInMainScreen.PAGE_INDEX_DEFAULT);
      case 2:
        return const PathDataMainPageBase.setting();
      default:
        throw Exception('unexpected index $index');
    }
  }

  const PathDataMainPageBase._();

  int get pageIndex => when(
      dashboard: () => 0,
      subscribing: (PageListTabPage initialPage) => 1,
      setting: () => 2);
}
