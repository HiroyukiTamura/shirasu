import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';

part 'page_channel_detail.g.dart';

@swidget
Widget pageChannelDetail({@required String text}) => SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
        horizontal: Dimens.MARGIN_OUTLINE,
      ),
      child: Text(
        text,
        style: TextStyles.CHANNEL_PLAIN,
      ),
    );
