import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart' show FeatureProgramData;
import 'package:shirasu/model/new_programs_data.dart';

@immutable
class DashboardModel {
  DashboardModel({@required this.featureProgramData, NewProgramsData newProgramsData}):
        newProgramsDataList = [newProgramsData];

  final FeatureProgramData featureProgramData;
  final List<NewProgramsData> newProgramsDataList;

  void appendNewPrograms(NewProgramsData newOne) {
    newProgramsDataList.add(newOne);
  }

  List<NewProgramItem> get allNewPrograms {
    return newProgramsDataList.map((it) => it.newPrograms.items).expand((it) => it).toList(growable: false);
  }
}