import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/ui_common/images.dart';

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
            CachedNetworkImage(
              imageUrl: iconUrl,
              height: _SIZE,
              width: _SIZE,
              imageBuilder: (context, provider) => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: provider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              errorWidget: (context, url, e) {
                debugPrint(e.toString());
                return Assets.svg.logoOfficial.supportWeb().toWidget(
                  width: _SIZE,
                  height: _SIZE,
                );
              }
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
