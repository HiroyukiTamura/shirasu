import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class PageMovieList extends StatelessWidget {

  const PageMovieList({Key key, @required this.channelPrograms}) : super(key: key);

  static const double _TILE_HEIGHT = 72;
  static const _THUMBNAIL_WIDTH = _TILE_HEIGHT * Dimens.IMG_RATIO;

  final ChannelPrograms channelPrograms;

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN),
        itemCount: channelPrograms.items.length,
        itemBuilder: (context, i) {
          final program = channelPrograms.items[i];
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
        });
}
