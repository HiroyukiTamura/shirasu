import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';

part 'dashboard_model.freezed.dart';

@freezed
abstract class DashboardModel implements _$DashboardModel {
  const factory DashboardModel({
    @required FeatureProgramData featureProgramData,
    @required List<NewProgramsData> newProgramsDataList,
  }) = _DashboardModel;

  const DashboardModel._();

  List<NewProgramItem> get allNewPrograms => newProgramsDataList
      .map((it) => it.newPrograms.items)
      .expand((it) => it)
      .toList(growable: false);
}

@freezed
abstract class DashboardModelState with _$DashboardModelState {
  const factory DashboardModelState.loadingMore(DashboardModel dashboardModel) =
      StateLoadmore;

  const factory DashboardModelState.preInitialized() = StatePreInitialized;

  const factory DashboardModelState.success(DashboardModel dashboardModel) =
      StateSuccess;

  const factory DashboardModelState.error() = StateError;
}
