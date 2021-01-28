import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:tuple/tuple.dart';

import '../../viewmodel/model/model_detail.dart';

/// data set for comment [PageCommentInner].
/// [comments] is only for display UI. do not use for business logic.
class _PageUiData {
  const _PageUiData([
    this._comments = const [],
    this.showBottomProgressIndicator = false,
  ]);

  final List<CommentItem> _comments;
  final bool showBottomProgressIndicator;

  List<CommentItem> get comments => _comments.toUnmodifiable();
}

/// data set for comment [PageCommentInner].
/// [comments] is only for display UI. do not use for business logic.
class _PageUiDataWrapper {
  const _PageUiDataWrapper({
    @required this.data,
    @required this.time,
    @required this.state,
  });

  factory _PageUiDataWrapper.initial() => _PageUiDataWrapper(
        data: const _PageUiData(),
        time: DateTime.now(),
        state: const CommentsState.loading(),
      );

  final _PageUiData data;
  final DateTime time;
  final CommentsState state;
}

const _kUpdateOffset = Duration(seconds: 1);

/// todo change to custom StateNotifier?
final kPrvPageUiData = StateNotifierProvider.family
    .autoDispose<StateController<_PageUiData>, String>((ref, id) {
  _PageUiDataWrapper lastPostedData = _PageUiDataWrapper.initial();

  final sc = StateController<_PageUiData>(lastPostedData.data);

  final removeListener = ref.watch(detailSNProvider(id)).addListener((state) {
    final commentHolder = state.commentHolder;
    final comments = commentHolder.followTimeLineMode.when(
      notFollow: (futurePos) => commentHolder.getCommentItemsBefore(futurePos),
      follow: () =>
          commentHolder.getCommentItemsBefore(state.playOutState.currentPos),
    );

    final data = _PageUiData(comments, !commentHolder.loadedMostPastComment);
    if (commentHolder.state != lastPostedData.state ||
        _kUpdateOffset < lastPostedData.time.difference(DateTime.now()).abs()) {
      lastPostedData = _PageUiDataWrapper(
        data: data,
        time: DateTime.now(),
        state: state.commentHolder.state,
      );
      sc.state = lastPostedData.data;
    }
  });
  ref.onDispose(removeListener);

  return sc;
});
