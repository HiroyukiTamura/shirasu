import 'package:flutter/cupertino.dart';

class NoEffectScrollBehavior extends ScrollBehavior {

  const NoEffectScrollBehavior();

  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) => child;
}