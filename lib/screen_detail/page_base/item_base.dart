import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_detail/page_base/item_heading.dart';

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

  @protected
  static Widget draggableSheet({
    @required String heading,
    @required Widget child,
  }) =>
      DraggableScrollableSheet(
        maxChildSize: 1,
        initialChildSize: 1,
        minChildSize: 1,
        builder: (context, scrollController) => Column(
            children: [
              ItemHeading(text: heading, onClearClicked: () {
                //todo implement
              }),
              Expanded(child: child),
            ],
          ),
      );
}
