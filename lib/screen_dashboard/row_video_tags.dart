import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/content_cell.dart';

class RowVideoTags extends StatelessWidget {
  final List<String> textList;
  static const double _SPACE = 8;

  const RowVideoTags({Key key, @required this.textList}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCell(
    child: Wrap(
      spacing: _SPACE,
      runSpacing: _SPACE,
      children: this
          .textList
          .map((text) => _VideoTagChip(
                text: text,
              ))
          .toList(growable: false),
    ),
  );
}

class _VideoTagChip extends StatelessWidget {
  final String text;

  const _VideoTagChip({this.text}) : super();

  @override
  Widget build(BuildContext context) => Container(
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                color: Styles.colorTextSub,
                fontSize: 13,
              ),
              children: [
                WidgetSpan(
                  child: Icon(
                    FontAwesomeIcons.tag,
                    size: 13,
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
                WidgetSpan(
                    child: SizedBox(
                  width: 4,
                )),
                TextSpan(text: text)
              ]),
        ),
      );
}
