import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/extension.dart';

part 'movie_list_item.g.dart';

class MovieListItemBase extends StatelessWidget {
  const MovieListItemBase({
    Key key,
    @required this.program,
    @required this.onTap,
    @required this.titleHeight,
    @required this.titleStyle,
    @required this.subTitleStyle,
  }) : super(key: key);

  final BaseProgram program;
  final GestureTapCallback onTap;
  final double titleHeight;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;

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
                CachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(program.id),
                  width: titleHeight * Dimens.IMG_RATIO,
                  errorWidget: Util.defaultPrgThumbnail,
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
                        style: titleStyle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat('yyyy/MM/dd HH:mm')
                            .format(program.broadcastAt),
                        style: subTitleStyle,
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
  @required BaseProgram program,
  @required GestureTapCallback onTap,
}) =>
    context.isBigScreen
        ? MovieListItemBase(
            program: program,
            onTap: onTap,
            titleHeight: 96,
            titleStyle: TextStyles.LIST_MOVIE_TITLE_THICK,
            subTitleStyle: const TextStyle(
              fontSize: FontSize.DEFAULT,
              color: Styles.COLOR_TEXT_SUB,
            ),
          )
        : MovieListItemBase(
            program: program,
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
