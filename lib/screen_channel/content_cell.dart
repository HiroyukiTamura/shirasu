import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/dimens.dart';

class ContentCell extends StatelessWidget {
  final Widget child;

  const ContentCell({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE),
    child: child,
  );
}
