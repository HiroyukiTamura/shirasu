import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/util.dart';

part 'common_linkify.g.dart';

@swidget
Widget commonLinkify(
  BuildContext context, {
  @required String text,
  @required VoidCallback onLaunchUrlErr,
}) => Linkify(
    onOpen: (link) async => Util.launchUrl(
      context,
      link.url, onLaunchUrlErr,
    ),
    text: text,
    style: const TextStyle(
      height: TextHeight.TEXT_HEIGHT,
      fontSize: FontSize.S15,
      color: Colors.white,
    ),
    linkStyle: TextStyles.defaultFontSizeAndHeight(
      color: Theme.of(context).primaryColor,
    ),
    options: LinkifyOptions(
      humanize: false,
    ),
  );
