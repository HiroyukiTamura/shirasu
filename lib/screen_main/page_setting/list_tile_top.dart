import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:shirasu/util.dart';

class ListTileTop extends StatelessWidget {
  const ListTileTop({
    Key key,
    @required this.iconUrl,
    @required this.userName,
  }) : super(key: key);

  final String iconUrl;
  final String userName;
  static const double _SIZE = 40;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.SETTING_OUTER_MARGIN,
          vertical: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleCachedNetworkImage(
              imageUrl: iconUrl,
              size: _SIZE,
              errorWidget: Util.defaultChannelIcon,
            ),
            const SizedBox(width: 16),
            Text(
              userName,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      );
}
