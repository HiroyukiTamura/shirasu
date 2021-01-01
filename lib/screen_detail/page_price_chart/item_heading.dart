import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_base.dart';

class ItemHeading extends ItemBase {
  const ItemHeading({
    @required this.onClearClicked,
    Key key,
  }) : super(key: key);

  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ItemBase.itemPadding(
            child: Text(
              Strings.ARCHIVE_PRICE_TABLE_TITLE,
              style: TextStyle(
                height: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
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
    );
}
