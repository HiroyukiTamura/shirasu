import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/page_comment/provider_page_comment.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';

import '../../util.dart';

part 'comment_list_view.g.dart';

class CommentListView extends HookWidget {
  const CommentListView({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;
  static const _LOAD_MORE_OFFSET = Dimens.MIN_CIRCULAR_PROGRESS_INDICATOR_H;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    useEffect(() => _effect(context, controller), [controller]);

    final data = useProvider(kPrvPageUiData(id).state);
    final items = data.comments;

    if (items.isEmpty) return const SizedBox.shrink();

    int itemCount = items.length;
    if (data.showBottomProgressIndicator) itemCount++;

    return ListView.builder(
      controller: controller,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (data.showBottomProgressIndicator && index == itemCount - 1)
          return const CenterCircleProgress();//todo padding

        final item = items[index];
        return ListTile(
          onTap: () => _onTap(context, item),
          dense: true,
          leading: _Leading(item: item),
          title: Text(item.text),
          subtitle: Text(item.user.name),
          trailing: _Trailing(item: item),
        );
      },
    );
  }

  /// note: [_onScroll] returns [Future].
  void Function() _effect(BuildContext context, ScrollController controller) {
    void listener() => _onScroll(context, controller);
    controller.addListener(listener);
    return () => controller.removeListener(listener);
  }

  Future<void> _onScroll(
      BuildContext context, ScrollController controller) async {
    final viewModel = context.read(detailSNProvider(id));
    final state = context.read(detailSNProvider(id).state);

    final showBtmProgressIndicator = context
        .read(kPrvPageUiData(id).state)
        .showBottomProgressIndicator;

    final followTimeLineMode = state.commentHolder.followTimeLineMode ==
        const FollowTimeLineMode.follow();

    if (followTimeLineMode) {
      final positionOnTop = controller.offset <= 0;

      if (!positionOnTop) {
        final videoPos = state.playOutState.currentPos;
        viewModel
            .notifyFollowTimeLineMode(FollowTimeLineMode.notFollow(videoPos));
      }
    } else if (showBtmProgressIndicator) {
      if (controller.position.maxScrollExtent - controller.offset <
          _LOAD_MORE_OFFSET) {
        final mostPastCommentTime = state
            .commentHolder
            .mostPastCommentTime;
        if (mostPastCommentTime != null)
          viewModel.loadMorePreComment(
              mostPastCommentTime - 1.milliseconds, false);
      }
    }
  }

  void _onTap(BuildContext context, CommentItem item) {
    final command = PortalState.commentSelect(item.commentTimeDuration);
    context.read(detailSNProvider(id)).commandModal(command);
  }
}

@swidget
Widget _trailing({
  @required CommentItem item,
}) =>
    Text(
      Util.formatDurationStyled(item.commentTimeDuration),
      maxLines: 1,
      style: TextStyle(
        color: Styles.colorTextSub,
        fontSize: 13,
        height: 1,
      ),
    );

@swidget
Widget _leading({
  @required CommentItem item,
}) =>
    SizedBox(
      width: 24,
      child: Center(
        child: CircleCachedNetworkImage(
          size: 24,
          imageUrl: item.user.icon,
        ),
      ),
    );
