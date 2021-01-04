import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';
import 'package:shirasu/extension.dart';

part 'row_video_tags.g.dart';

const double _SPACE = 8;

@swidget
Widget rowVideoTags({@required List<String> textList}) => BasePadding(
      top: 16,
      child: Wrap(
        spacing: _SPACE,
        runSpacing: _SPACE,
        children: textList
            .map((text) => _VideoTagChip(text: text))
            .toUnmodifiableList(),
      ),
    );

@swidget
Widget _videoTagChip({
  @required String text,
}) => RichText(
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
