import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:shirasu/screen_detail/padding_row.dart';
import 'package:shirasu/util.dart';

part 'row_video_desc.g.dart';

@swidget
Widget rowVideoDesc(
  BuildContext context, {
  @required String text,
}) {
  return BasePadding(
    child: Linkify(
      onOpen: (link) async => Util.launchUrl(context, link.url),
      text: text,
      style: TextStyles.DETAIL_VIDEO_DESC,
      linkStyle: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 14,
        height: TextStyles.TEXT_HEIGHT,
      ),
      options: LinkifyOptions(
        humanize: false,
      ),
    ),
  );
}
