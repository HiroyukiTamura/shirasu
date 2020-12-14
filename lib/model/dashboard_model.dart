import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/extension.dart';

part 'dashboard_model.freezed.dart';

///todo move to viewmodel package
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
}) = _DashboardModel;

  const DashboardModel._();

  factory DashboardModel.preInitialized() => DashboardModel(state: const StatePreInitialized());
  factory DashboardModel.error() => DashboardModel(state: const StateError());

  DashboardModel copyAsSuccess(ApiData apiData) => copyWith(state: const StateSuccess(), apiData: apiData);

  DashboardModel copyAsLoadMore() => copyWith(state: const StateLoadmore());
}

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.loadingMore() =
  StateLoadmore;

  const factory DashboardState.preInitialized() = StatePreInitialized;

  const factory DashboardState.success() =
  StateSuccess;

  const factory DashboardState.error() = StateError;
}
