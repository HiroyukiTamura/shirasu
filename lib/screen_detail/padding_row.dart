import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/dimens.dart';

abstract class WidgetItemBase extends StatelessWidget {
  const WidgetItemBase({Key key}) : super(key: key);

  @protected
  Widget basePadding({
    @required Widget child,
    double bottom = 0,
    double top = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          right: Dimens.MARGIN_OUTLINE,
          left: Dimens.MARGIN_OUTLINE,
          bottom: bottom,
          top: top,
        ),
        child: child,
      );
}
