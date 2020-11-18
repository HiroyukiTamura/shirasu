import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_normal.dart';

class ListTileEditable extends StatelessWidget {
  const ListTileEditable({
    Key key,
    @required this.title,
    @required this.text,
    this.subText,
  }) : super(key: key);

  final String title;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTileNormal(
          title: title,
          text: text,
          subText: subText,
        ),
        IconButton(
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
