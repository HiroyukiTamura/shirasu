import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      Container(
        height: 24,
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: TextStyle(
            height: 1,
            color: Colors.white.withOpacity(.8),
          ),
        ),
      ),
      const SizedBox(height: 6),
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
      const SizedBox(height: 4),
      if (trailing != null) trailing
    ],
  );
}