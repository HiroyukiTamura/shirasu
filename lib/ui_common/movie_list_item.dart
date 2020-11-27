import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({Key key, @required this.program}) : super(key: key);

  static const double _TILE_HEIGHT = 72;
  static const double PADDING = 8;
  static const _THUMBNAIL_WIDTH = _TILE_HEIGHT * Dimens.IMG_RATIO;

  final BaseProgram program;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(PADDING),
        child: Container(
          height: _TILE_HEIGHT,
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: UrlUtil.getThumbnailUrl(program.id),
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
                      DateFormat('yyyy/MM/dd HH:mm')
                          .format(program.broadcastAt),
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

class MovieListBigItem extends StatelessWidget {
  const MovieListBigItem({
    Key key,
    @required this.program,
    @required this.onTap,
  }) : super(key: key);
  static const double PADDING = 8;

  final BaseProgram program;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => StackedInkwell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: Dimens.IMG_RATIO,
            child: CachedNetworkImage(
              imageUrl: UrlUtil.getThumbnailUrl(program.id),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              program.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyles.LIST_MOVIE_TITLE_BIG,
            ),
          )
        ],
      ),
    ),
  );
}
