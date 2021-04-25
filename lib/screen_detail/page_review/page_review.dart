import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/btm_sheet/common.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/review_state.dart';
import 'package:shirasu/model/graphql/review.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'page_review.g.dart';

/// todo show dialog when pop screen; save review or not
class PageReview extends StatelessWidget {
  const PageReview({
    @required this.onClearClicked,
    @required this.program,
  });

  final OnClearClicked onClearClicked;
  final ProgramDetail program;

  String get _id => program.id;

  @override
  Widget build(BuildContext context) => DraggableSheet(
        heading: Strings.HEADER_REVIEW,
        onClearClicked: onClearClicked,
        child: useProvider(kPrvViewModelDetail(_id)
            .state
            .select((it) => it.myReviewUpdatingState)).when(
          normal: () => _ReviewListView(
            program: program,
            showMyReview: true,
            onTapReviewItem: _onTapReviewItem,
            onTapInputReviewBtn: _onTapInputReviewBtn,
          ),
          deleting: () => const CenterCircleProgress(),
          deleted: () => _ReviewListView(
            program: program,
            showMyReview: false,
            onTapReviewItem: _onTapReviewItem,
            onTapInputReviewBtn: _onTapInputReviewBtn,
          ),
        ),
      );

  void _onTapInputReviewBtn(BuildContext context) =>
      context.pushPage(GlobalRoutePath.editReview(_id));

  void _onTapReviewItem(BuildContext context, BaseReview review) {
    final viewModel = context.read(kPrvViewModelDetail(_id));
    final btmSheet = review is MyReview
        ? BtmSheetState.myReviewMenu(review.id, _id)
        : BtmSheetState.shareReview(_id, review, program.title);
    viewModel.commandModal(btmSheet);
  }
}

@swidget
Widget _reviewListView(
  BuildContext context, {
  @required ProgramDetail program,
  @required bool showMyReview,
  @required OnTap onTapInputReviewBtn,
  @required
      void Function(BuildContext context, BaseReview review) onTapReviewItem,
}) {
  final myReview = showMyReview ? program.myReview : null;
  final children = [
    if (myReview == null)
      _ItemInputReview(
        viewerIconUrl: myReview.user.icon,
        onTap: onTapInputReviewBtn,
      )
    else
      _ReviewItem(
        item: myReview,
        onTap: () => onTapReviewItem(context, myReview),
      ),
    if (program.reviews.items.isEmpty && myReview == null)
      const _NoWidget()
    else
      ...program.reviews.items
          .where((it) => it.id != myReview?.id)
          .map<Widget>((it) => _ReviewItem(
                item: it,
                onTap: () => onTapReviewItem(context, it),
              )),
  ];
  return Material(
    color: Theme.of(context).scaffoldBackgroundColor, //for ripple effect
    child: ListView.separated(
      separatorBuilder: (context, i) => Container(
        height: .2,
        color: Colors.white,
      ),
      itemBuilder: (context, i) => children[i],
      itemCount: children.length,
    ),
  );
}

@swidget
Widget _itemInputReview(
  BuildContext context, {
  @required String viewerIconUrl,
  @required OnTap onTap,
}) =>
    ListTile(
      onTap: () => onTap(context),
      minVerticalPadding: 8,
      leading: _UserIcon(iconUrl: viewerIconUrl),
      title: const Text(
        Strings.BTN_WRITE_REVIEW,
        style: TextStyle(
          fontSize: FontSize.DEFAULT,
          color: Styles.COLOR_TEXT_SUB,
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
  @required VoidCallback onTap,
}) =>
    ListTile(
      minVerticalPadding: 16,
      isThreeLine: true,
      leading: _UserIcon(iconUrl: item.user.icon),
      onTap: onTap,
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
          if (item is MyReview && item.state != null)
            _ReviewStateLabel(state: item.state),
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
  final icon = state.when(
    inReview: () => Icons.spellcheck,
    open: () => Icons.check_circle,
    ng: () => Icons.warning,
  );
  final text = state.when(
    inReview: () => Strings.REVIEW_STATE_IN_REVIEW,
    open: () => Strings.REVIEW_STATE_OPEN,
    ng: () => Strings.REVIEW_STATE_NG,
  );
  return Padding(
    padding: const EdgeInsets.only(top: 4, bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              style: TextStyle(
                color: color,
              ),
              children: [
                WidgetSpan(
                  child: Icon(
                    icon,
                    size: 16,
                    color: color,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: 4)),
                TextSpan(text: text),
              ]),
        ),
        if (state == const ReviewState.inReview())
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 2,
                    color: color,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                Strings.REVIEW_NOTE,
                style: TextStyle(
                  color: Styles.COLOR_TEXT_SUB,
                  fontSize: FontSize.S13,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}

@swidget
Widget _userIcon({@required String iconUrl}) => CircleCachedNetworkImage(
      size: 40,
      imageUrl: iconUrl,
      errorWidget: Util.defaultUserIcon,
    );
