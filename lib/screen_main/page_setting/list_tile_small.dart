import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';

class ListTileSmall extends StatelessWidget {
  const ListTileSmall({
    Key key,
    @required this.title,
    @required this.text,
    this.subText,
    this.extra,
    this.trailing,
  }) : super(key: key);

  final String title;
  final String text;
  final String subText;
  final Widget extra;
  final Widget trailing;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          height: 1,
          color: Colors.white.withOpacity(.8),
        ),
      ),
      const SizedBox(height: 4),
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
              fontSize: 20,
            ),
          )),
      if (extra != null) Padding(
        padding: const EdgeInsets.only(top: 4),
        child: extra,
      )
    ],
  );
}