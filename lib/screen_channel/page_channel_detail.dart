import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';

class PageChannelDetail extends StatelessWidget {
  const PageChannelDetail({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
          horizontal: Dimens.MARGIN_OUTLINE,
        ),
        child: Text(
          text,
          style: TextStyles.CHANNEL_PLAIN,
        ),
      );
}
