import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class RowVideoDesc extends StatelessWidget {

  const RowVideoDesc({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Linkify(
    onOpen: (link) async {
      if (await canLaunch(link.url)) {
        await launch(link.url);
      } else {
        throw 'Could not launch $link';//todo err handle
      }
    },
    text: text,
    style: TextStyles.DETAIL_VIDEO_DESC,
    linkStyle: TextStyles.DETAIL_VIDEO_DESC_LINK,
    options: LinkifyOptions(
      humanize: false,
    ),
  );
}