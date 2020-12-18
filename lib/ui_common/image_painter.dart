import 'dart:ui' as ui;

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter with EquatableMixin {
  const ImagePainter({
    @required this.image,
    @required this.widgetW,
    @required this.widgetH,
  }) : super();

  final ui.Image image;
  final double widgetW;
  final double widgetH;

  @override
  void paint(Canvas canvas, Size size) => paintImage(
        canvas: canvas,
        image: image,
        rect: Rect.fromLTWH(0, 0, widgetW, widgetH),
        fit: BoxFit.cover,
      );

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }

  @override
  List<Object> get props => [image, widgetW, widgetH];
}
