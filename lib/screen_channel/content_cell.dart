import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/dimens.dart';

class ContentCell extends StatelessWidget {
  const ContentCell({Key key, this.child, this.verticalPadding = 0}) : super(key: key);

  final Widget child;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE, vertical: verticalPadding),
    child: child,
  );
}
