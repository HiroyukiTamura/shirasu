import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

class ItemNoteCredit extends ItemBase {

  const ItemNoteCredit({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ItemBase.itemPadding(
        child: const Text(
          Strings.BTM_SHEET_MSG_CREDIT_CARD,
          style: TextStyle(
            height: 1.3,
            fontSize: 13,
            color: Colors.white,
          ),
        ),
      ),
    );
}
