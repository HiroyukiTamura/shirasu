import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';

@immutable
class DashboardModel {
  const DashboardModel({@required this.featureProgramData, @required this.newProgramsData});

  final FeatureProgramData featureProgramData;
  final NewProgramsData newProgramsData;
}