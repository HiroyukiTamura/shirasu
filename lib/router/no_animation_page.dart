import 'package:flutter/material.dart';

class NoAnimationPage extends Page {
  const NoAnimationPage({@required this.child, LocalKey key}) : super(key: key);

  final Widget child;

  @override
  Route createRoute(BuildContext context) => PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) => child,
    );
}