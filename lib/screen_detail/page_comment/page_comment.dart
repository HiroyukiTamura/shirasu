import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:tuple/tuple.dart';

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
        child: PageCommentInner(id: id),
      );

  Future<void> _onChange(BuildContext context, Duration currentPos) async {
    final commentHolder =
        context.read(detailSNProvider(id).state).commentHolder;

    final start = commentHolder.mostPastCommentTime;
    final end = commentHolder.mostFutureCommentTime;
    if (start == null || end == null)
      return; // commentHolder.comments is empty. this means state is not success or success but no comment posted.

    if (start == end) // displayed comment is only one.
      return;

    if (currentPos.between(start, end) ||
        (commentHolder.loadedMostPastComment && currentPos < start) ||
        (commentHolder.loadedMostFutureComment && end < currentPos)) {
      final futureComments = commentHolder.getCommentItemsAfter(currentPos);
      final pastComments = commentHolder.getCommentItemsBefore(currentPos);

      if (futureComments.length < 100) {
        if (commentHolder.loadedMostFutureComment) return;

        Duration duration =
            futureComments.firstOrNull?.commentTimeDuration ?? currentPos;

        duration += 1.milliseconds;
        await context.read(detailSNProvider(id)).loadMorePostComment(duration, false);
      } else if (pastComments.length < 100) {
        if (commentHolder.loadedMostPastComment) return;

        Duration duration =
            pastComments.lastOrNull?.commentTimeDuration ?? currentPos;
        duration -= 1.milliseconds;
        await context.read(detailSNProvider(id)).loadMorePreComment(duration, false);
      }
    } else {
      await context.read(detailSNProvider(id)).renewAllComment(currentPos);
    }
  }
}

/// data set for comment [PageCommentInner].
/// [comments] is only for display UI. do not use for business logic.
class _PageUiData {
  const _PageUiData([
    this._comments = const [],
  ]);

  final List<CommentItem> _comments;

  List<CommentItem> get comments => _comments.toUnmodifiable();
}

/// todo change to custom StateNotifier?
final _kPrvPageUiData = StateNotifierProvider.family
    .autoDispose<StateController<_PageUiData>, String>((ref, id) {
  Tuple3<_PageUiData, DateTime, CommentsState> lastPostedData = Tuple3(
      const _PageUiData(), DateTime.now(), const CommentsState.loading());
  final sc = StateController<_PageUiData>(lastPostedData.item1);

  final removeListener = ref.watch(detailSNProvider(id)).addListener((state) {
    final comments = ref
        .read(detailSNProvider(id).state)
        .commentHolder
        .getCommentItemsBefore(state.playOutState.currentPos);
    final data = _PageUiData(comments);
    if (state.commentHolder.state != lastPostedData.item3 ||
        1.seconds < lastPostedData.item2.difference(DateTime.now()).abs()) {
      lastPostedData = Tuple3(data, DateTime.now(), state.commentHolder.state);
      sc.state = data;
    }
  });
  ref.onDispose(removeListener);

  return sc;
});

@hwidget
Widget pageCommentInner({
  @required String id,
}) =>
    useProvider(
        detailSNProvider(id).state.select((it) => it.commentHolder.state)).when(
      success: () => _ListItem(id: id),
      loading: () => const CenterCircleProgress(),
      loadingMore: (loadingState) => _ListItem(
        id: id,
        loadingState: loadingState,
      ),
      error: () => Container(),
    );

class _ListItem extends HookWidget {
  const _ListItem({
    Key key,
    this.loadingState,
    @required this.id,
  }) : super(key: key);

  final LoadingState loadingState;
  final String id;

  @override
  Widget build(BuildContext context) {
    final items = useProvider(_kPrvPageUiData(id).state).comments;
    final itemCount = loadingState == null ? items.length : items.length + 1;
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (loadingState == LoadingState.FUTURE && index == 0)
          return Text('top');
        else if (loadingState == LoadingState.PAST && index == itemCount - 1)
          return Text('btm');

        int i = loadingState == LoadingState.FUTURE ? index - 1 : index;

        final item = items[i];
        return ListTile(
          dense: true,
          leading: _leading(item: item),
          title: Text(item.text),
          subtitle: Text(item.user.name),
          trailing: _trailing(item: item),
        );
      },
    );
  }

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
}
