import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/util/types.dart';

part 'page_review.g.dart';

@swidget
Widget pageReview({
  @required OnClearClicked onClearClicked,
  @required ProgramDetailData programData,
}) {
  final program = programData.program;
  return DraggableSheet(
    heading: Strings.HEADER_REVIEW,
    onClearClicked: onClearClicked,
    child: ListView(
      children: [
        _WriteReviewBtn(
          programId: program.id,
          viewerIconUrl: programData.viewer.icon,
          onTap: (context) => context.pushPage(GlobalRoutePath.editReview(program)),
        ),
        Container(
          height: .2,
          color: Colors.white,
        ),
        if (program.reviews.items.isEmpty)
          const _NoWidget()
        else
          ...program.reviews.items
              .map<Widget>((it) => _ReviewItem(item: it))
              .joinWith(() => Container(
                    height: 48,
                    alignment: Alignment.center,
                    child: Container(
                      height: .2,
                      color: Colors.white,
                    ),
                  )),
      ],
    ),
  );
}

@swidget
Widget _writeReviewBtn(
  BuildContext context, {
  @required String viewerIconUrl,
  @required String programId,
  @required OnTap onTap,
}) =>
    Material(
      color: Theme.of(context).scaffoldBackgroundColor,//for ripple effect
      child: ListTile(
        onTap: () => onTap(context),
        minVerticalPadding: 8,
        leading: CircleCachedNetworkImage(
          size: 40,
          imageUrl: viewerIconUrl,
        ),
        title: const Text(
          Strings.BTN_WRITE_REVIEW,
          style: TextStyle(
            fontSize: FontSize.DEFAULT,
            color: Styles.COLOR_TEXT_SUB,
          ),
        ),
      ),
    );

@swidget
Widget _noWidget() => Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: const Text(
        Strings.REVIEW_IS_EMPTY,
        style: TextStyle(
          fontSize: FontSize.S13,
          color: Styles.COLOR_TEXT_SUB,
        ),
      ),
    );

@swidget
Widget _reviewItem({
  @required ReviewsItem item,
}) =>
    ListTile(
      minVerticalPadding: 16,
      isThreeLine: true,
      leading: CircleCachedNetworkImage(
        size: 40,
        imageUrl: item.user.icon, //todo default user icon
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              item.user.name,
              style: const TextStyle(
                color: Styles.COLOR_TEXT_SUB,
                fontSize: FontSize.S13,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            DateFormat('yyyy/MM/dd HH:mm').format(item.createdAt),
            style: const TextStyle(
              color: Styles.COLOR_TEXT_SUB,
              fontSize: FontSize.S13,
            ),
          ),
        ],
      ),
      subtitle: Text(
        item.body,
        style: const TextStyle(
          color: Colors.white,
          fontSize: FontSize.DEFAULT,
          height: TextHeight.TEXT_H_DETAIL,
        ),
      ),
    );
