import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'page_comment.g.dart';

final _kPrvSeekEvent = Provider.family.autoDispose<Duration, String>(
    (ref, id) => ref.watch(detailSNProvider(id).state).playOutState.currentPos);

class PageComment extends StatelessWidget {
  const PageComment({
    Key key,
    @required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) => ProviderListener(
        provider: _kPrvSeekEvent(id),
        onChange: _onChange,
        child: PageCommentInner(id: id),
      );
  
  Future<void> _onChange(BuildContext context, Duration duration) async {

  }
}

@hwidget
Widget pageCommentInner({@required String id}) {
  final holder =
      useProvider(detailSNProvider(id).state.select((it) => it.commentHolder));
  return holder.state.when(
    error: () => Container(),
    loading: () => const CenterCircleProgress(),
    loadingMore: () {

    },
    success: () {
      final items = holder.commentsPre.items + holder.commentsPost.items;
      return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Row(
            children: [
              Text(items[index].text),
            ],
          ),
        );
      },
    );
    },
  );
}
