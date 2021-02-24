import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:tuple/tuple.dart';
import 'package:shirasu/extension.dart';

import '../../viewmodel/model/model_detail.dart';

part 'provider_page_comment.freezed.dart';

/// data set for comment [PageCommentInner].
/// [comments] is only for display UI. do not use for business logic.
@freezed
abstract class PageUiData with _$PageUiData {
  const factory PageUiData({
    @Default([]) List<CommentItem> rawComments,
    @Default(false) bool showBottomProgressIndicator,
  }) = _PageUiData;

  const PageUiData._();

  UnmodifiableListView<CommentItem> get comments => IteratableX<CommentItem>(rawComments).toUnmodifiable();
}

/// data set for comment [PageCommentInner].
/// [comments] is only for display UI. do not use for business logic.
@freezed
abstract class PageUiDataWrapper with _$PageUiDataWrapper {
  const factory PageUiDataWrapper({
    @required PageUiData data,
    @required DateTime timeUtc,
    @required CommentsState state,
  }) = _PageUiDataWrapper;

  factory PageUiDataWrapper.initial() => _PageUiDataWrapper(
        data: const PageUiData(),
        timeUtc: DateTime.now().toUtc(),
        state: const CommentsState.loading(),
      );
}

final _kUpdateOffset = 1.seconds;

/// todo change to custom StateNotifier?
final kPrvPageUiData = StateNotifierProvider.family
    .autoDispose<StateController<PageUiData>, String>((ref, id) {
  var lastPostedData = PageUiDataWrapper.initial();

  final sc = StateController<PageUiData>(lastPostedData.data);

  final removeListener = ref.watch(kPrvViewModelDetail(id)).addListener((state) {
    final commentHolder = state.commentHolder;
    final comments = commentHolder.followTimeLineMode.when(
      notFollow: (futurePos) => commentHolder.getCommentItemsBefore(futurePos),
      follow: () =>
          commentHolder.getCommentItemsBefore(state.playOutState.currentPos),
    );

    final data = PageUiData(rawComments: comments, showBottomProgressIndicator: !commentHolder.loadedMostPastComment);
    if (commentHolder.state != lastPostedData.state ||
        _kUpdateOffset <
            lastPostedData.timeUtc.difference(DateTime.now().toUtc()).abs()) {
      lastPostedData = _PageUiDataWrapper(
        data: data,
        timeUtc: DateTime.now().toUtc(),
        state: state.commentHolder.state,
      );
      sc.state = lastPostedData.data;
    }
  });
  ref.onDispose(removeListener);

  return sc;
});
