import 'package:flutter/cupertino.dart';
import 'package:lp/extensions.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    required this.smallScreen,
    required this.wideScreen,
  });

  final WidgetBuilder smallScreen;
  final WidgetBuilder wideScreen;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraint) => context.isWideScreen
            ? wideScreen(context)
            : smallScreen(context),
      );
}
