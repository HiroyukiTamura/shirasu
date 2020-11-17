import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart'
    show FeatureProgramData;
import 'package:shirasu/model/new_programs_data.dart';

part 'dashboard_model.freezed.dart';

@immutable
class DashboardModel {
  DashboardModel({
    @required this.featureProgramData,
    NewProgramsData newProgramsData,
  }) : newProgramsDataList = [newProgramsData];

  final FeatureProgramData featureProgramData;
  final List<NewProgramsData> newProgramsDataList;

  void appendNewPrograms(NewProgramsData newOne) =>
      newProgramsDataList.add(newOne);

  List<NewProgramItem> get allNewPrograms => newProgramsDataList
      .map((it) => it.newPrograms.items)
      .expand((it) => it)
      .toList(growable: false);
}

@freezed
abstract class DashboardModelState with _$DashboardModelState {
  const factory DashboardModelState.preInitialized() = StatePreInitialized;
  const factory DashboardModelState.success(DashboardModel dashboardModel) = StateSuccess;
  const factory DashboardModelState.error() = StateError;
}