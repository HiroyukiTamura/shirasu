import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:tuple/tuple.dart';

import 'comment_list_view.dart';

part 'page_comment.g.dart';

final _kPrvPositionUpdateEvent = Provider.family.autoDispose<Duration, String>(
    (ref, id) => ref.watch(detailSNProvider(id).state).playOutState.currentPos);

class PageComment extends StatelessWidget {
  const PageComment({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) => ProviderListener(
        provider: _kPrvPositionUpdateEvent(id),
        onChange: _onChange,
        child: _PageCommentInner(id: id),
      );

  Future<void> _onChange(BuildContext context, Duration currentPos) async {
    final viewModel = context.read(detailSNProvider(id));
    final commentHolder =
        context.read(detailSNProvider(id).state).commentHolder;

    if (commentHolder.followTimeLineMode is FollowTimeLineModeNone) return;

    final start = commentHolder.mostPastCommentTime;
    final end = commentHolder.mostFutureCommentTime;
    if (start == null || end == null)
      return; // commentHolder.comments is empty. this means state is not success or success but no comment posted.

    if (start == end) // displayed comment is only one.
      return;

    if (!(currentPos.between(start, end) ||
        (commentHolder.loadedMostPastComment && currentPos < start) ||
        (commentHolder.loadedMostFutureComment && end < currentPos))) {
      await viewModel.renewAllComment(currentPos);
      return;
    }

    final futureComments = commentHolder.getCommentItemsAfter(currentPos);
    final pastComments = commentHolder.getCommentItemsBefore(currentPos);

    if (futureComments.length < ViewModelDetail.COMMENT_PREFETCH_OFFSET) {
      if (commentHolder.loadedMostFutureComment) return;

      Duration duration =
          futureComments.firstOrNull?.commentTimeDuration ?? currentPos;

      duration += 1.milliseconds;
      await viewModel.loadMorePostComment(duration, false);
    } else if (pastComments.length < ViewModelDetail.COMMENT_PREFETCH_OFFSET) {
      if (commentHolder.loadedMostPastComment) return;

      Duration duration =
          pastComments.lastOrNull?.commentTimeDuration ?? currentPos;
      duration -= 1.milliseconds;
      await viewModel.loadMorePreComment(duration, false);
    }
  }
}

@hwidget
Widget _pageCommentInner({
  @required String id,
}) =>
    useProvider(
        detailSNProvider(id).state.select((it) => it.commentHolder.state)).when(
      success: () => CommentListView(id: id),
      loading: () => const CenterCircleProgress(),
      loadingMore: (loadingState) => CommentListView(id: id),
      error: () => Container(), //todo implement
    );