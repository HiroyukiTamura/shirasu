import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerSliderTrackShape extends RoundedRectSliderTrackShape {

  const PlayerSliderTrackShape();

  @override
  Rect getPreferredRect({
    @required RenderBox parentBox,
    @required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}