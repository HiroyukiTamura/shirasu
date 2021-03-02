import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/screen_detail/page_comment/comment_list_view.dart';

part 'page_comment.g.dart';

final _kPrvPositionUpdateEvent = Provider.family.autoDispose<Duration, String>(
    (ref, id) => ref.watch(kPrvViewModelDetail(id).state).playOutState.currentPosSafe);

class PageComment extends StatelessWidget {
  const PageComment({
    @required this.id,
    Key key,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) => ProviderListener(
        provider: _kPrvPositionUpdateEvent(id),
        onChange: _onChange,
        child: PageCommentInner(id: id),
      );

  Future<void> _onChange(BuildContext context, Duration currentPos) async {
    final viewModel = context.read(kPrvViewModelDetail(id));
    final commentHolder =
        context.read(kPrvViewModelDetail(id).state).commentHolder;

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

      var duration =
          futureComments.firstOrNull?.commentTimeDuration ?? currentPos;

      duration += 1.milliseconds;
      await viewModel.loadMoreFutureComment(duration, false);
    } else if (pastComments.length < ViewModelDetail.COMMENT_PREFETCH_OFFSET) {
      if (commentHolder.loadedMostPastComment) return;

      var duration =
          pastComments.lastOrNull?.commentTimeDuration ?? currentPos;
      duration -= 1.milliseconds;
      await viewModel.loadMorePastComment(duration, false);
    }
  }
}

@protected
@hwidget
Widget pageCommentInner({
  @required String id,
}) =>
    useProvider(
        kPrvViewModelDetail(id).state.select((it) => it.commentHolder.state)).when(
      success: () => CommentListView(id: id),
      loading: () => const CenterCircleProgress(),
      loadingMore: (_) => CommentListView(id: id),
      error: (errMsg) => PageErrText(text: errMsg.networkValue,),
    );