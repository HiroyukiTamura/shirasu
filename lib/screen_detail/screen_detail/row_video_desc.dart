import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'row_video_desc.g.dart';

@swidget
Widget rowVideoDesc(
  BuildContext context, {
  @required String text,
  @required String id,
}) => BasePadding(
    child: Linkify(
      onOpen: (link) async => Util.launchUrl(
        context,
        link.url,
        () => context
            .read(detailSNProvider(id))
            .commandSnackBar(const SnackMsg.unknown()),
      ),
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
