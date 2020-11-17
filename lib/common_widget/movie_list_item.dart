import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class MovieListItem extends StatelessWidget {

  const MovieListItem({Key key, @required this.program}) : super(key: key);

  static const double _TILE_HEIGHT = 72;
  static const _THUMBNAIL_WIDTH = _TILE_HEIGHT * Dimens.IMG_RATIO;

  final BaseProgram program;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        height: _TILE_HEIGHT,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: ApiClient.getThumbnailUrl(program.id),
              width: _THUMBNAIL_WIDTH,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    program.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.LIST_MOVIE_TITLE,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    DateFormat('yyyy/MM/dd HH:mm').format(program.broadcastAt),
                    style: TextStyle(
                      fontSize: 12,
                      color: Styles.colorTextSub,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}