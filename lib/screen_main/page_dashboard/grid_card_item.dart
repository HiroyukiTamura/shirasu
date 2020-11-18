import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';

class GirdCardItem extends StatelessWidget {
  GirdCardItem({
    Key key,
    @required this.width,
    @required this.height,
    @required this.item,
    @required this.onTap,
  })  : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        super(key: key);

  final String _thumbnailUrl;

  final double width;
  final double height;
  final NewProgramItem item;
  final GestureTapCallback onTap;

  static const double HORIZONTAL_MARGIN = 4;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimens.DASHBOARD_ITEM_RADIUS),
              ),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: Dimens.IMG_RATIO,
                    child: CachedNetworkImage(
                      imageUrl: _thumbnailUrl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      item.title,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.DASHBOARD_GRID_TITLE,
                    ),
                  ),
                  Text(
                    item.channel.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyles.plain,
                  )
                ],
              ),
            ),
            SizedBox.expand(
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ],
        ),
      );
}
