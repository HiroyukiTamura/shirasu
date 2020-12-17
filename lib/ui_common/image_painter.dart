import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter {
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
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
