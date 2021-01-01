import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_base.dart';

class ItemNote extends ItemBase {

  const ItemNote({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ItemBase.itemPadding(
          child: Text(
            Strings.ARCHIVE_PRICE_TABLE_NOTE,
            style: TextStyle(
                height: 1.3,
                fontSize: 13,
                color: ItemBase.color),
          ),
        ),
      );
}
