// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsive_builder.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {Key? key, required this.smallScreen, required this.wideScreen})
      : super(key: key);

  final Widget Function(BuildContext) smallScreen;

  final Widget Function(BuildContext) wideScreen;

  @override
  Widget build(BuildContext _context) =>
      responsiveBuilder(smallScreen: smallScreen, wideScreen: wideScreen);
}
