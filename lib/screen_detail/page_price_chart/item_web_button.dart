import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

class ItemWebButton extends ItemBase {

  const ItemWebButton({@required this.onTap, Key key}) :super (key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ItemBase.itemPadding(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () => onTap,
          child: Text(
            Strings.OPEN_WEB,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
}