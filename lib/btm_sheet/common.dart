
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../main.dart';

part 'common.g.dart';

@hwidget
Widget _heading({
  @required bool Function() isSelected,
}) =>
    SizedBox(
      width: 40,
      child: Visibility(
        visible: isSelected(),
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );

class ListBtmSheetContent<T> extends StatelessWidget {
  const ListBtmSheetContent({
    Key key,
    @required this.items,
    @required this.onTap,
    @required this.textBuilder,
    @required this.isSelected,
  }) : super(key: key);

  final List<T> items;
  final void Function(T item) onTap;
  final String Function(T item) textBuilder;
  final bool Function(T item) isSelected;

  @override
  Widget build(BuildContext context) => ListView(
        shrinkWrap: true,
        children: items
            .mapIndexed((index, item) => SizedBox(
                  height: 48,
                  child: Material(
                    child: InkWell(
                      onTap: () => onTap(item),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            _Heading(isSelected: () => isSelected(item)),
                            const SizedBox(width: 16),
                            _text(item: item)
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
            .toUnmodifiable(),
      );

  Widget _text({@required T item}) => Text(
        textBuilder(item),
        maxLines: 1,
        style: const TextStyle(
          fontSize: 16,
        ),
      );
}

// @swidget
// Widget listBtmSheet<T>({
//   @required List<T> items,
//   @required String Function(T item) textBuilder,
//   @required bool visible,
//   @required VoidCallback onTapBackDrop,
//   @required void Function(T item) onTap,
//   @required Widget child,
//   @required bool Function(T item) isSelected,
// }) =>
//     PortalAnimatedModalBarrier(
//       onClose: onTapBackDrop,
//       visible: visible,
//       child: BtmSheet(
//         visible: visible,
//         btmSheetContent: _BtmSheetContent<T>(
//           items: items,
//           onTap: onTap,
//           textBuilder: textBuilder,
//           isSelected: isSelected,
//         ),
//         child: child,
//       ),
//     );

@swidget
Widget textBtmSheetContent({
  @required String text,
  @required VoidCallback onTap,
}) =>
    ListTile(
      leading: const Icon(Icons.access_time),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          height: 1,
        ),
      ),
      onTap: onTap,
    );
