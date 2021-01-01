import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ItemBase extends StatelessWidget {
  const ItemBase({
    Key key,
  }) : super(key: key);

  @protected
  static Color color = Colors.white.withOpacity(.85);

  @protected
  static Widget itemPadding({
    @required Widget child,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: child,
      );
}
