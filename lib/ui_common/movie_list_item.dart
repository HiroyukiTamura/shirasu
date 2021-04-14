import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';

part 'movie_list_item.g.dart';

class MovieListItemBase extends StatelessWidget {
  const MovieListItemBase({
    @required this.onTap,
    @required this.titleHeight,
    @required this.titleStyle,
    @required this.subTitleStyle,
    @required this.id,
    @required this.title,
    @required this.broadcastAt,
    Key key,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final double titleHeight;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final String id;
  final String title;
  final DateTime broadcastAt;

  static const double PADDING = 8;

  @override
  Widget build(BuildContext context) => StackedInkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(PADDING),
          child: SizedBox(
            height: titleHeight,
            child: Row(
              children: [
                CustomCachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(id),
                  width: titleHeight * Dimens.IMG_RATIO,
                  errorWidget: Util.defaultPrgThumbnail,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // avoid overflow
                        constraints: BoxConstraints(
                          maxHeight: titleHeight / 2,
                        ),
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: titleStyle,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          DateFormat('yyyy/MM/dd HH:mm').format(broadcastAt),
                          style: subTitleStyle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

@swidget
Widget movieListItem(
  BuildContext context, {
  @required String id,
  @required String title,
  @required DateTime broadcastAt,
  @required GestureTapCallback onTap,
}) =>
    context.isBigScreen
        ? MovieListItemBase(
            id: id,
            title: title,
            broadcastAt: broadcastAt,
            onTap: onTap,
            titleHeight: 96,
            titleStyle: TextStyles.LIST_MOVIE_TITLE_THICK,
            subTitleStyle: const TextStyle(
              fontSize: FontSize.DEFAULT,
              color: Styles.COLOR_TEXT_SUB,
            ),
          )
        : MovieListItemBase(
            id: id,
            title: title,
            broadcastAt: broadcastAt,
            onTap: onTap,
            titleHeight: 72,
            titleStyle: TextStyles.listMovieTitle,
            subTitleStyle: const TextStyle(
              fontSize: FontSize.SMALL,
              color: Styles.COLOR_TEXT_SUB,
            ),
          );

@swidget
Widget movieListBigItem({
  @required BaseProgram program,
  @required GestureTapCallback onTap,
}) =>
    StackedInkWell(
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
                errorWidget: Util.defaultPrgThumbnail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
                top: 8,
              ),
              child: Text(
                program.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: TextStyles.defaultFontSizeAndHeight(),
              ),
            )
          ],
        ),
      ),
    );
