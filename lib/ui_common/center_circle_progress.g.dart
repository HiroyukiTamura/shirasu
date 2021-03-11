// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_circle_progress.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class CenterCircleProgress extends StatelessWidget {
  const CenterCircleProgress(
      {Key key, this.padding = EdgeInsets.zero, this.valueColor})
      : super(key: key);

  final EdgeInsets padding;

  final Animation<Color> valueColor;

  @override
  Widget build(BuildContext _context) =>
      centerCircleProgress(padding: padding, valueColor: valueColor);
}

/// default [strokeWidth] is [CircularProgressIndicator.strokeWidth]
class CustomCircleProgress extends HookWidget {
  /// default [strokeWidth] is [CircularProgressIndicator.strokeWidth]
  const CustomCircleProgress({Key key, this.valueColor, this.strokeWidth = 4})
      : super(key: key);

  /// default [strokeWidth] is [CircularProgressIndicator.strokeWidth]
  final Animation<Color> valueColor;

  /// default [strokeWidth] is [CircularProgressIndicator.strokeWidth]
  final double strokeWidth;

  @override
  Widget build(BuildContext _context) =>
      customCircleProgress(valueColor: valueColor, strokeWidth: strokeWidth);
}
