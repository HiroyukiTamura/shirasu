// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_shower.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// immediately hide but show with animation
class AnimatedShower extends StatelessWidget {
  /// immediately hide but show with animation
  const AnimatedShower(
      {Key key,
      @required this.visible,
      @required this.duration,
      @required this.child})
      : super(key: key);

  /// immediately hide but show with animation
  final bool visible;

  /// immediately hide but show with animation
  final Duration duration;

  /// immediately hide but show with animation
  final Widget child;

  @override
  Widget build(BuildContext _context) =>
      animatedShower(visible: visible, duration: duration, child: child);
}
