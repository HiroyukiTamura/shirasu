import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:shirasu/util.dart';

class RowVideoDesc extends StatelessWidget {

  const RowVideoDesc({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Linkify(
    onOpen: (link) async => Util.launchUrl(context, link.url),
    text: text,
    style: TextStyles.DETAIL_VIDEO_DESC,
    linkStyle: TextStyles.DETAIL_VIDEO_DESC_LINK,
    options: LinkifyOptions(
      humanize: false,
    ),
  );
}