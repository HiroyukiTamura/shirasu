import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
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
    @required Result Function(bool, String) error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() dashboard,
    @required Result Function(PageListTabPage initialPage) subscribing,
    @required Result Function() search,
    @required Result Function() setting,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() fcm,
    @required Result Function() auth,
    @required Result Function() preLogin,
    @required Result Function(String programId) editReview,
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
        fcm: fcm,
        editReview: editReview,
      );
    else if (this is PathDataMainPageBase)
      return (this as PathDataMainPageBase).when(
        dashboard: dashboard,
        subscribing: subscribing,
        setting: setting,
        search: search,
      );
    else
      throw ArgumentError.value('unexpected routePath type: $runtimeType');
  }

  Result wrappedWhenRough<Result extends Object>({
    @required Result Function() intro,
    @required Result Function(bool showLoginBtn, String errText) error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function() mainPage,
    @required Result Function() ossLicense,
    @required Result Function() imgLicense,
    @required Result Function() fcm,
    @required Result Function() auth,
    @required Result Function() preLogin,
    @required Result Function(String programId) editReview,
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
        fcm: fcm,
        editReview: editReview,
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

  const factory GlobalRoutePath.error(bool showLoginBtn, String errText) =
      PathDataError;

  const factory GlobalRoutePath.channel(String channelId) = _PathDataChannel;

  const factory GlobalRoutePath.program(String programId) = PathDataProgram;

  const factory GlobalRoutePath.ossLicense() = _PathDataOssLicense;

  const factory GlobalRoutePath.imgLicense() = _PathDataImgLicense;

  const factory GlobalRoutePath.fcm() = _PathDataFcm;

  const factory GlobalRoutePath.auth() = _PathDataAuth;

  const factory GlobalRoutePath.preLogin() = _PathDataPreLogin;

  const factory GlobalRoutePath.editReview(String programId) = _PathDataEditReview;

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

  const factory PathDataMainPageBase.search() = _PathDataMainPageSearch;

  const factory PathDataMainPageBase.setting() = _PathDataMainPageSetting;

  factory PathDataMainPageBase.fromIndex(int index) {
    switch (index) {
      case 0:
        return const PathDataMainPageBase.dashboard();
      case 1:
        return const PathDataMainPageBase.subscribing(
            PageListInMainScreen.PAGE_INDEX_DEFAULT);
      case 2:
        return const PathDataMainPageBase.search();
      case 3:
        return const PathDataMainPageBase.setting();
      default:
        throw ArgumentError.value(index);
    }
  }

  const PathDataMainPageBase._();

  int get pageIndex => when(
        dashboard: () => 0,
        subscribing: (initialPage) => 1,
        search: () => 2,
        setting: () => 3,
      );
}
