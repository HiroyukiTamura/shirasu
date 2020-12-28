import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'dashboard_model.freezed.dart';

@freezed
abstract class ApiData implements _$ApiData {
  const factory ApiData({
    @required FeatureProgramData featureProgramData,
    @required List<NewProgramsData> newProgramsDataList,
  }) = _ApiData;

  const ApiData._();

  List<NewProgramItem> get allNewPrograms => newProgramsDataList
      .map((it) => it.newPrograms.items)
      .expand((it) => it)
      .toUnmodifiableList();
}

@freezed
abstract class DashboardModel implements _$DashboardModel {
  const factory DashboardModel({
    @required DashboardState state,
    ApiData apiData,
    @Default(0) double offset,
    @Default(0) double channelHorizontalOffset,
    @Default(0) double subscribingChannelOffset,
    @Default(0) int billboardHeaderPage,
  }) = _DashboardModel;

  const DashboardModel._();

  factory DashboardModel.preInitialized() =>
      const DashboardModel(state: StatePreInitialized());

  factory DashboardModel.error() => const DashboardModel(state: _StateError());

  DashboardModel copyAsSuccess(ApiData apiData) =>
      copyWith(state: const StateSuccess(), apiData: apiData);

  DashboardModel copyAsLoadMore() => copyWith(state: const _StateLoadMore());
}

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.loadingMore() = _StateLoadMore;

  const factory DashboardState.preInitialized() = StatePreInitialized;

  const factory DashboardState.success() = StateSuccess;

  const factory DashboardState.error() = _StateError;
}

mixin MutableState on ViewModelBaseChangeNotifier {
  DashboardModel _state = DashboardModel.preInitialized();
  ui.Image _headerImage;

  void trySetState(DashboardModel state) {
    if (isMounted) {
      _state = state;
      notifyListeners();
    }
  }

  DashboardModel get state => _state;

  set state(DashboardModel state) {
    _state = state;
    notifyListeners();
  }

  void trySetHeaderImage(ui.Image headerImage) {
    if (isMounted) {
      _headerImage = headerImage;
      notifyListeners();
    }
  }

  ui.Image get headerImage => _headerImage;
}
