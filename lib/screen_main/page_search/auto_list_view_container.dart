import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';
import 'package:shirasu/ui_common/hive_fcm_topic_listenable.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';

part 'auto_list_view_container.g.dart';

@hwidget
Widget autoListListViewContainer() {
  final textLen = useProvider(kPrvVmSearch.state.select((it) => it.textLen));
  switch (textLen) {
    case 0:
      return const _HistoryListView();
    case 1:
      return const SizedBox.shrink();
    default:
      return const _SuggestionListView();
  }
}

@hwidget
Widget _historyListView() => HiveSearchHistoryListenable(
      builder: (context, value, child) => ListView(
        children: value.sortedValues
            .map((it) => SuggestItem(value: it.text))
            .toList(),
      ),
    );

@hwidget
Widget _suggestionListView() => ListView(
      children: useProvider(kPrvVmSearch.state.select((it) => it.suggestList))
          .map((it) => SuggestItem(
                type: it.type,
                value: it.data.value,
              ))
          .toList(),
    );

@visibleForTesting
class SuggestItem extends HookWidget {
  const SuggestItem({
    @required this.value,
    this.type,
    Key key,
  }) : super(key: key);

  final String value;
  final ItemType type;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).hintColor;

    Widget title;
    if (type == null)
      title = Text(
        value,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: textColor,
        ),
      );
    else {
      final children = <TextSpan>[];
      int position = 0;

      void appendChild({
        @required String text,
        @required bool bold,
      }) {
        final span = TextSpan(
          text: text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontWeight: bold ? FontWeight.bold : null,
                color: textColor,
              ),
        );
        children.add(span);
      }

      RegExp('<em>(.*?)</em>').allMatches(value).forEach((it) {
        if (position != 0)
          appendChild(
            text: value.substring(position, it.start),
            bold: false,
          );

        appendChild(
          text: HighlightResult.removeHtmlTag(it[0]),
          bold: true,
        );

        position = it.end;
      });

      if (position < value.length)
        appendChild(
          text: value.substring(position),
          bold: false,
        );
      title = RichText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          children: children,
        ),
      );
    }

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      leading: type == null
          ? null
          : Icon(
              type.when(
                tag: () => Icons.local_offer,
                channelTitle: () => Icons.portrait,
                programTitle: () => Icons.movie,
              ),
              color: textColor,
            ),
      title: title,
      trailing: IconButton(
        color: textColor,
        icon: const Icon(Icons.north_west),
        onPressed: () => _putTextField(context),
      ),
      onTap: () async {
        _putTextField(context);
        return context.read(kPrvVmSearch).submit(type == const ItemType.tag());
      },
    );
  }

  void _putTextField(BuildContext context) =>
      context.read(kPrvVmSearch).putTextFieldWithTag(value);
}
