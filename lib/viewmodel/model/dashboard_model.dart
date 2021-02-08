import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'dashboard_model.freezed.dart';

@freezed
abstract class ApiData implements _$ApiData {
  const factory ApiData({
    @required FeatureProgramData featureProgramData,
    @protected @required List<NewProgramsData> rawNewProgramsDataList,
  }) = _ApiData;

  const ApiData._();

  UnmodifiableListView<NewProgramItem> get allNewPrograms => newProgramsDataList
      .map((it) => it.newPrograms.items)
      .expand((it) => it)
      .toUnmodifiable();

  UnmodifiableListView<NewProgramsData> get newProgramsDataList =>
      rawNewProgramsDataList.toUnmodifiable();
}

@freezed
abstract class DataWrapper with _$DataWrapper {
  /// must be used with [DataWrapper.initial]
  @protected
  const factory DataWrapper({
    @required double scrollOffset,
    @required double channelHorizontalOffset,
    @required double subscribingChannelOffset,
    @required int billboardHeaderPage,
    @required ApiData apiData,
    @required bool loadingMore,
  }) = _DataWrapper;

  @protected
  factory DataWrapper.initial(ApiData apiData) => DataWrapper(
        scrollOffset: 0,
        channelHorizontalOffset: 0,
        subscribingChannelOffset: 0,
        billboardHeaderPage: 0,
        apiData: apiData,
        loadingMore: false,
      );
}

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel.initial() = _DashboardPreInitialized;

  @protected
  const factory DashboardModel.success(DataWrapper data) = DashboardSuccess;

  const factory DashboardModel.error() = _DashboardModelError;

  const DashboardModel._();

  factory DashboardModel.successInitialization(ApiData data) =>
      DashboardModel.success(DataWrapper.initial(data));

  /// must be this is [DashboardSuccess]
  DashboardModel appendLoadMoreData(NewProgramsData newProgramsData) {
    final dataWrapper = (this as DashboardSuccess).data;
    final rawNewProgramsDataList =
        dataWrapper.apiData.newProgramsDataList + [newProgramsData];
    return DashboardModel.success(
      dataWrapper.copyWith.apiData(
        rawNewProgramsDataList: rawNewProgramsDataList,
      ),
    );
  }
}

mixin MutableState on ViewModelBaseChangeNotifier {
  DashboardModel _state = const DashboardModel.initial();
  ui.Image _headerImage;

  DashboardModel get state => _state;

  set state(DashboardModel state) {
    _state = state;
    notifyListeners();
  }

  set headerImage(ui.Image headerImage) {
    _headerImage = headerImage;
    notifyListeners();
  }

  ui.Image get headerImage => _headerImage;
}
