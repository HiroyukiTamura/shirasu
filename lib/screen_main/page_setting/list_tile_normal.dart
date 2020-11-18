import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';

/// layout metrics ref: https://material.io/components/lists#specs
class ListTileNormal extends StatelessWidget {
  const ListTileNormal({
    Key key,
    @required this.title,
    @required this.text,
    this.subText,
    this.trailing,
  }) : super(key: key);

  final String title;
  final String text;
  final String subText;
  final Widget trailing;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTileTitle(title: title),
      RichText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              TextSpan(text: text),
              if (subText != null) ...[
                const WidgetSpan(
                  child: SizedBox(width: 16),
                ),
                TextSpan(text: subText)
              ],
            ],
            style: TextStyle(
              height: 1,
              color: Colors.white,
              fontSize: 22,
            ),
          )),
      if (trailing != null) Padding(
        padding: const EdgeInsets.only(top: 4),
        child: trailing,
      )
    ],
  );
}