import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// to overlay ripple effect to image, stack [InkWell] and its child
class StackedInkwell extends StatelessWidget {
  const StackedInkwell({
    Key key,
    @required this.onTap,
    @required this.child,
    @required this.circle,
  }) : super(key: key);

  final bool circle;
  final Widget child;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          child,
          if (circle)
            ClipOval(
              child: _inkWell(),
            )
          else
            _inkWell()
        ],
      );

  Widget _inkWell() => Positioned.fill(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onTap,
          ),
        ),
      );
}
