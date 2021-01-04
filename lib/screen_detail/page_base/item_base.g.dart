// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_base.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class DraggableSheet extends StatelessWidget {
  const DraggableSheet(
      {Key key,
      @required this.heading,
      @required this.child,
      @required this.onClearClicked})
      : super(key: key);

  final String heading;

  final Widget child;

  final dynamic Function(BuildContext) onClearClicked;

  @override
  Widget build(BuildContext _context) => draggableSheet(_context,
      heading: heading, child: child, onClearClicked: onClearClicked);
}
