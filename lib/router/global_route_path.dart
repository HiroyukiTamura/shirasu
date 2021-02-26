import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/screen_main/page_list/page_subscribing.dart';

part 'global_route_path.freezed.dart';

@immutable
abstract class GlobalRoutePathBase {
  const factory GlobalRoutePathBase.redirect2Root() =
      PathDataMainPageBase.dashboard;
}

extension GlobalRoutePathBaseX on GlobalRoutePathBase {
  Result wrappedWhen<Result extends Object>({
    @required Result Function() intro,
    @required Result Function(bool) error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() dashboard,
    @required Result Function(PageListTabPage initialPage) subscribing,
    @required Result Function() setting,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() auth,
    @required Result Function() preLogin,
  }) {
    if (this is GlobalRoutePath)
      return (this as GlobalRoutePath).when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
        ossLicense: ossLicense,
        imgLicense: imgLicense,
        auth: auth,
        preLogin: preLogin,
      );
    else if (this is PathDataMainPageBase)
      return (this as PathDataMainPageBase).when(
        dashboard: dashboard,
        subscribing: subscribing,
        setting: setting,
      );
    else
      throw ArgumentError.value('unexpected routePath type: $runtimeType');
  }

  Result wrappedWhenRough<Result extends Object>({
    @required Result Function() intro,
    @required Result Function(bool authExpired) error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() mainPage,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() auth,
    @required Result Function() preLogin,
  }) {
    if (this is PathDataMainPageBase) return mainPage();
    if (this is GlobalRoutePath)
      return (this as GlobalRoutePath).when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
        ossLicense: ossLicense,
        auth: auth,
        preLogin: preLogin,
        imgLicense: imgLicense,
      );
    else
      throw ArgumentError.value('unexpected routePath type: $runtimeType');
  }

  Result wrappedWhenType<Result extends Object>({
    @required Result Function() pathDataMainPageBase,
    @required Result Function() globalRoutePath,
  }) {
    if (this is PathDataMainPageBase) return pathDataMainPageBase();
    if (this is GlobalRoutePath)
      return globalRoutePath();
    else
      throw ArgumentError.value('unexpected routePath type: $runtimeType');
  }
}

@freezed
abstract class GlobalRoutePath with _$GlobalRoutePath, GlobalRoutePathBase {
  const factory GlobalRoutePath.intro() = _PathDataIntro;

  const factory GlobalRoutePath.error(bool authExpired) = PathDataError;

  const factory GlobalRoutePath.channel(String channelId) = _PathDataChannel;

  const factory GlobalRoutePath.program(String programId) = PathDataProgram;

  const factory GlobalRoutePath.ossLicense() = _PathDataOssLicense;

  const factory GlobalRoutePath.imgLicense() = _PathDataImgLicense;

  const factory GlobalRoutePath.auth() = _PathDataAuth;

  const factory GlobalRoutePath.preLogin() = _PathDataPreLogin;

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
  const factory PathDataMainPageBase.dashboard() = _PathDataMainPageDashBoard;

  const factory PathDataMainPageBase.subscribing(PageListTabPage index) =
      _PathDataMainPageSubscribing;

  const factory PathDataMainPageBase.setting() = _PathDataMainPageSetting;

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
        throw ArgumentError.value(index);
    }
  }

  const PathDataMainPageBase._();

  int get pageIndex => when(
      dashboard: () => 0,
      subscribing: (initialPage) => 1,
      setting: () => 2);
}
