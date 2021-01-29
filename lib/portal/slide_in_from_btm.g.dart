// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_in_from_btm.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SlideInFromBtm extends StatelessWidget {
  const SlideInFromBtm(
      {Key key,
      @required this.child,
      @required this.visible,
      @required this.duration,
      @required this.btmSheetContent,
      @required this.rootKey})
      : super(key: key);

  final Widget child;

  final bool visible;

  final Duration duration;

  final Widget btmSheetContent;

  final GlobalKey<MyAppState> rootKey;

  @override
  Widget build(BuildContext _context) => slideInFromBtm(
      child: child,
      visible: visible,
      duration: duration,
      btmSheetContent: btmSheetContent,
      rootKey: rootKey);
}
