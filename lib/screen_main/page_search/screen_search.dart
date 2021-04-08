import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_search/search_result.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_search.dart';
import 'package:shirasu/screen_main/page_search/auto_list_view_container.dart';

part 'screen_search.g.dart';

final kPrvVmSearch = StateNotifierProvider.autoDispose<ViewModelSearch>(
    (ref) => ViewModelSearch(ref.read));

@hwidget
Widget pageSearchInMainScreen(BuildContext context) => Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: _SearchTextField(),
        ),
        _Seem(),
        Expanded(
          child: _ListContent(),
        ),
      ],
    );

@swidget
Widget _seem(BuildContext context) => Container(
      height: .5,
      color: Colors.white,
    );

@hwidget
Widget _searchTextField(BuildContext context) => TextField(
      focusNode: useProvider(kPrvVmSearch.select((it) => it)).textFiledFocus,
      autofocus: true,
      textInputAction: TextInputAction.search,
      controller: useProvider(kPrvVmSearch.select((it) => it)).controller,
      decoration: InputDecoration(
        hintText: Strings.HINT_SEARCH,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          color: Theme.of(context).hintColor,
          onPressed: () => context.read(kPrvVmSearch).clearTextField(),
        ),
      ),
      onSubmitted: (_) async => context.read(kPrvVmSearch).submit(false),
    );

@hwidget
Widget _listContent(BuildContext context) =>
    useProvider(kPrvVmSearch.state.select((it) => it.searchResult))?.when(
      loading: () => const CenterCircleProgress(),
      error: (msg) => PageError(text: msg.networkValue),
      canceled: () => const SizedBox.shrink(),
      noDisplay: () => const AutoListListViewContainer(),
      success: (content) => SearchResultListView(content: content),
    );
