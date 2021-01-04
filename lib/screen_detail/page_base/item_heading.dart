import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

class ItemHeading extends ItemBase {
  const ItemHeading({
    @required this.text,
    @required this.onClearClicked,
    Key key,
  }) : super(key: key);

  final VoidCallback onClearClicked;
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 12, bottom: 4),
    child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItemBase.itemPadding(
              child: Text(
                text,
                style: TextStyle(
                  height: 1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: onClearClicked,
              elevation: 0,
              constraints: const BoxConstraints(
                minWidth: 0,
                minHeight: 0,
              ),
              shape: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
  );
}
