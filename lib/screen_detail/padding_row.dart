import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/dimens.dart';

abstract class WidgetItemBase extends StatelessWidget {
  const WidgetItemBase({Key key}) : super(key: key);

  @protected
  Widget basePadding({@required Widget child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE),
        child: child,
      );
}
