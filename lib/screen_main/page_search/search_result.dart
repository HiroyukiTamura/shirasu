import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header_multi_card_view.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/screen_main/page_search/page_search.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:shirasu/extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'search_result.g.dart';

const double _kListSpacer = 24;

@swidget
Widget searchResultListView({
  @required SearchResultContent content,
}) {
  if (content.isEmpty)
    return const PageError(text: Strings.SEARCH_RESULT_EMPTY);

  return LayoutBuilder(
    builder: (context, constraints) => ListView(
        padding: const EdgeInsets.symmetric(vertical: _kListSpacer),
        children: content.searchByTag
            ? [_SectionProgram(programList: content.fullMatchByTagSafe)]
            : <Widget>[
                _SectionTag(tags: content.tags),
                _SectionChannel(content: content, constraints: constraints),
                _SectionProgram(programList: content.programs),
              ].toList()),
  );
}

@swidget
Widget _sectionTag(
  BuildContext context, {
  @required UnmodifiableListView<String> tags,
}) =>
    Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, bottom: 24),
      child: Wrap(
        spacing: 16,
        children: tags
            .map((it) => ActionChip(
                  avatar: const Icon(
                    Icons.local_offer,
                    size: 20,
                    color: Styles.COLOR_TEXT_SUB,
                  ),
                  label: Text(
                    it,
                    style: TextStyles.SINGLE_H,
                  ),
                  onPressed: () async {
                    context.read(kPrvVmSearch).putTextFieldWithTag(it);
                    return context.read(kPrvVmSearch).submit(true);
                  },
                ))
            .toList(),
      ),
    );

@swidget
Widget _sectionChannel(
  BuildContext context, {
  @required SearchResultContent content,
  @required BoxConstraints constraints,
}) =>
    ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: content.channels
          .map((it) => [
                ListTile(
                  dense: true,
                  title: Text(
                    it.hit.channelTitle,
                    style: const TextStyle(
                      height: TextHeight.TEXT_H_SML,
                      fontSize: FontSize.S15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: CircleCachedNetworkImage(
                    imageUrl: UrlUtil.getChannelLogoUrl(it.hit.channelId),
                    size: 32,
                  ),
                  onTap: () => context
                      .read(kPrvAppRouterDelegate)
                      .pushPage(GlobalRoutePath.channel(it.hit.channelId)),
                ),
                HorizontalCarousels(
                  list: content.channelDataListSafe
                      .firstWhere((channelData) =>
                          channelData.channel.id == it.hit.channelId)
                      .channel
                      .programs
                      .items
                      .map((program) => HorizontalCarouselItemConf(
                            channelId: program.channelId,
                            channelName: it.hit.channelTitle,
                            prgId: program.id,
                            prgTitle: program.title,
                            broadcastAt: program.broadcastAt,
                          ))
                      .toList(),
                  maxWidth: BillboardHeaderMultiCardView.WIDTH,
                  detailCaption: false,
                  onTapItem: (context, prgId) => context.pushProgramPage(prgId),
                  constraints: constraints,
                ),
              ])
          .expand((it) => it)
          .toList(),
    );

@swidget
Widget _sectionProgram(
  BuildContext context, {
  @required UnmodifiableListView<SearchResultItem> programList,
}) =>
    ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: programList
          .map((it) => MovieListItem(
                id: it.hit.programId,
                title: it.hit.programTitle,
                broadcastAt: it.hit.broadcastAt,
                onTap: () => context
                    .read(kPrvAppRouterDelegate)
                    .pushPage(GlobalRoutePath.program(it.hit.programId)),
              ))
          .toList(),
    );
