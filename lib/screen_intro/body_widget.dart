import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/extension.dart';

part 'body_widget.g.dart';

@swidget
Widget bodyWidget({
  @required List<String> stringList,
}) =>
    Column(
      children: stringList
          .map<Widget>((it) => Text(
                it,
                style: TextStyles.introDesc,
              ))
          .joinWith(() => const SizedBox(height: 8))
          .toList(),
    );
