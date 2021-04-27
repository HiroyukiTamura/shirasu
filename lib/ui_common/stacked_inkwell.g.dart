// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stacked_inkwell.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// to overlay ripple effect to image, stack [InkWell] and its child
class StackedInkWell extends StatelessWidget {
  /// to overlay ripple effect to image, stack [InkWell] and its child
  const StackedInkWell({Key key, @required this.child, this.onTap})
      : super(key: key);

  /// to overlay ripple effect to image, stack [InkWell] and its child
  final Widget child;

  /// to overlay ripple effect to image, stack [InkWell] and its child
  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      stackedInkWell(child: child, onTap: onTap);
}
