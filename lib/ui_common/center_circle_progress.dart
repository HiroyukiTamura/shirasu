import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'center_circle_progress.g.dart';

@swidget
Widget centerCircleProgress() => const Center(
    child: CircularProgressIndicator(),
  );