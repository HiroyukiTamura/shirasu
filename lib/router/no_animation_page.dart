import 'package:flutter/material.dart';

class NoAnimationPage extends Page {
  const NoAnimationPage({LocalKey key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  Route createRoute(BuildContext context) => PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) => child,
    );
}