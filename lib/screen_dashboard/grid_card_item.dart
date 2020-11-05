import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';

class GirdCardItem extends StatelessWidget {
  GirdCardItem({
    Key key,
    @required this.width,
    @required this.height,
    @required this.item,
  })  : _thumbnailUrl = ApiClient.getThumbnailUrl(item.id),
        super(key: key);

  final String _thumbnailUrl;

  final double width;
  final double height;
  final Item item;

  static const double HORIZONTAL_MARGIN = 4;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: HORIZONTAL_MARGIN),
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
      );
}
