import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/content_cell.dart';
import 'package:shirasu/extension.dart';

class RowVideoTags extends StatelessWidget {

  const RowVideoTags({Key key, @required this.textList}) : super(key: key);

  final List<String> textList;
  static const double _SPACE = 8;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: _SPACE,
    runSpacing: _SPACE,
    children: textList
        .map((text) => _VideoTagChip(text: text))
        .toList(growable: false),
  );
}

class _VideoTagChip extends StatelessWidget {

  const _VideoTagChip({@required this.text}) : super();

  final String text;

  @override
  Widget build(BuildContext context) => RichText(
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
          const WidgetSpan(child: SizedBox(width: 4)),
          TextSpan(text: text)
        ]),
  );
}
