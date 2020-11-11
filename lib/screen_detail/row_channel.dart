import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/text_styles.dart';

class RowChannel extends StatelessWidget {

  const RowChannel({Key key, @required this.title, @required this.imageUrl}) : super(key: key);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 24,
    child: Row(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
        ),
        const SizedBox(width: 16),
        Text(
          title,
          style: TextStyles.DETAIL_CHANNEL_NAME,
        )
      ],
    ),
  );
}
