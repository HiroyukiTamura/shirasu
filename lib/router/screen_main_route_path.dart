import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

part 'screen_main_route_path.freezed.dart';

@immutable
class GlobalRoutePathBase {
  const factory GlobalRoutePathBase.redirect2Root() = PathDataMainPageDashBoard;

  static Result wrappedWhen<Result extends Object>(
    GlobalRoutePathBase routePath, {
    @required Result Function() intro,
    @required Result Function() error,
    @required Result Function(String channelId) channel,
    @required Result Function(String programId) program,
    @required Result Function(BirthDateIntentData birthDate) editBirthDate,
    @required Result Function() dashboard,
    @required Result Function(PageSubscribingPageIndex index) subscribing,
    @required Result Function() setting,
  }) {
    if (routePath is GlobalRoutePath)
      return routePath.when(
        intro: intro,
        error: error,
        channel: channel,
        program: program,
        editBirthDate: editBirthDate,
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

  const factory GlobalRoutePath.editBirthDate(BirthDateIntentData data) =
      PathDataEditBirthDate;

  factory GlobalRoutePath.buildProgram({
    @required String channelId,
    @required String tenantId,
    @required String programIdFragment,
  }) =>
      GlobalRoutePath.program('$channelId-$tenantId-$programIdFragment');

  factory GlobalRoutePath.buildEditBirthDate(DateTime dateTime) => GlobalRoutePath.editBirthDate(BirthDateIntentData(dateTime));
}

@freezed
abstract class PathDataMainPageBase
    implements _$PathDataMainPageBase, GlobalRoutePathBase {
  const factory PathDataMainPageBase.dashboard() = PathDataMainPageDashBoard;

  const factory PathDataMainPageBase.subscribing(PageSubscribingPageIndex index) =
      PathDataMainPageSubscribing;

  const factory PathDataMainPageBase.setting() = PathDataMainPageSetting;

  factory PathDataMainPageBase.fromIndex(int index) {
    switch (index) {
      case 0:
        return const PathDataMainPageBase.dashboard();
      case 1:
        return const PathDataMainPageBase.subscribing(PageSubscribingPageIndex.SUBSCRIBING);
      case 2:
        return const PathDataMainPageBase.setting();
      default:
        throw Exception('unexpected index $index');
    }
  }

  const PathDataMainPageBase._();

  int getIndex() =>
      when(dashboard: () => 0, subscribing: (PageSubscribingPageIndex index) => 1, setting: () => 2);
}

@immutable
class BirthDateIntentData {
  BirthDateIntentData(DateTime dateTime)
      : year = dateTime.year,
        month = dateTime.month,
        date = dateTime.day;

  final int year;
  final int month;
  final int date;
}
