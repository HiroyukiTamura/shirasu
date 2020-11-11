import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/dimens.dart';

class ContentCell extends StatelessWidget {

  const ContentCell({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE),
        child: child,
      );
}
