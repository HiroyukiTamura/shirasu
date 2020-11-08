import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';

class PageChannelDetail extends StatelessWidget {
  const PageChannelDetail({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => ContentCell(
        verticalPadding: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
        child: Text(
          text,
          style: TextStyles.CHANNEL_PLAIN,
        ),
      );
}
