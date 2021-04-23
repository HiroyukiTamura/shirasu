import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/review_state.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/extension.dart';
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
        if (program.myReview == null)
          _ItemInputReview(
            viewerIconUrl: programData.viewer.icon,
            onTap: (context) =>
                context.pushPage(GlobalRoutePath.editReview(program)),
          )
        else
          _ReviewItem(
            item: program.myReview,
            status: program.myReview.state,
          ),
        Container(
          height: .2,
          color: Colors.white,
        ),
        if (program.reviews.items.isEmpty && program.myReview == null)
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
Widget _itemInputReview(
  BuildContext context, {
  @required String viewerIconUrl,
  @required OnTap onTap,
}) =>
    Material(
      color: Theme.of(context).scaffoldBackgroundColor, //for ripple effect
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
Widget _reviewItem(
  BuildContext context, {
  @required BaseReview item,
  ReviewState status,
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
                fontWeight: FontWeight.bold,
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
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (status != null) _ReviewStateLabel(state: status),
          Text(
            item.body,
            style: const TextStyle(
              color: Colors.white,
              fontSize: FontSize.DEFAULT,
              height: TextHeight.TEXT_H_DETAIL,
            ),
          ),
        ],
      ),
    );

@swidget
Widget _reviewStateLabel(
  BuildContext context, {
  @required ReviewState state,
}) {
  final color = state.when(
    inReview: () => Theme.of(context).primaryColorDark,
    open: () => Theme.of(context).primaryColor,
    ng: () => Styles.labelCaution,
  );
  return Padding(
    padding: const EdgeInsets.only(top: 4, bottom: 8),
    child: RichText(
      text: TextSpan(
          style: TextStyle(
            color: color,
          ),
          children: [
            WidgetSpan(
              child: Icon(
                state.when(
                  inReview: () => Icons.spellcheck,
                  open: () => Icons.check_circle,
                  ng: () => Icons.warning,
                ),
                size: 16,
                color: color,
              ),
            ),
            const WidgetSpan(child: SizedBox(width: 4)),
            TextSpan(
              text: state.when(
                inReview: () => Strings.REVIEW_STATE_IN_REVIEW,
                open: () => Strings.REVIEW_STATE_OPEN,
                ng: () => Strings.REVIEW_STATE_NG,
              ),
            ),
          ]),
    ),
  );
}
