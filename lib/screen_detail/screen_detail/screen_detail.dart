import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

final detailSNProvider =
    StateNotifierProvider.autoDispose.family<ViewModelDetail, String>((ref, id) => ViewModelDetail(id, ref));

final _pBtmSheetExpanded = Provider.autoDispose.family<PageSheetModel, String>(
  (ref, id) => ref.watch(detailSNProvider(id).state).prgDataResult.maybeWhen(
        success: (programDetail, channelData, page) => page,
        orElse: () => const PageSheetModel.hidden(),
      ),
);

final pDetailScaffold = Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScreenDetail extends HookWidget {

  const ScreenDetail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ColoredBox(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: useProvider(
              detailSNProvider(id).state.select((it) => it.prgDataResult)).when(
            loading: () => const CenterCircleProgress(),
            preInitialized: () => const CenterCircleProgress(),
            error: () => const PageError(),
            success: _successWidget,
          ),
        ),
      );

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider(id)).playVideo(isPreview);

  Widget _successWidget(ProgramDetailData programDetailData,
      ChannelData channelData, PageSheetModel page) => LayoutBuilder(builder: (context, constraints) {

      double headerH = constraints.maxWidth / Dimens.IMG_RATIO;
      final listViewH = constraints.maxHeight - headerH;
      return Stack(
        children: [
          Column(
            children: [
              VideoHeader(
                height: headerH,
                programId: programDetailData.program.id,
                onTap: () async => _playVideo(context, false),
                onTapPreviewBtn: () async => _playVideo(context, true),
              ),
              _PlayerBodyWrapper(
                height: listViewH,
                data: programDetailData,
              )
            ],
          ),
          VideoSeekBar(topMargin: headerH - VideoSeekBar.HEIGHT/2,),
        ],
      );
    });
}

class _BottomSheet extends HookWidget {
  const _BottomSheet({
    Key key,
    @required this.program,
  }) : super(key: key);

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) => useProvider(_pBtmSheetExpanded(program.id)).when(
        hidden: () => const SizedBox.shrink(),
        handouts: () => PageHandouts(
          program: program,
          onClearClicked: _onClearClicked,
        ),
        pricing: () => PagePriceChart(
          program: program,
          onClearClicked: _onClearClicked,
        ),
      );

  Future<void> _onClearClicked(BuildContext context) async =>
      context.read(detailSNProvider(program.id)).panelController.close();
}

@swidget
Widget _playerBodyWrapper({
  @required double height,
  @required ProgramDetailData data,
}) =>
    height < 0
        ? const SizedBox.shrink()
        : _PlayerBody(height: height, data: data);

class _PlayerBody extends HookWidget {
  const _PlayerBody({
    @required this.height,
    @required this.data,
  });

  final double height;
  final ProgramDetailData data;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: height,
      child: SlidingUpPanel(
        minHeight: 0,
        maxHeight: height,
        controller: useProvider(detailSNProvider(data.program.id)).panelController,
        color: Theme.of(context).scaffoldBackgroundColor,
        panel: _BottomSheet(program: data.program),
        body: ListView.builder(
            itemCount: 6,
            padding: const EdgeInsets.only(bottom: 24),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return RowChannel(
                    title: data.program.channel.name,
                    channelId: data.program.channel.id,
                  );
                case 1:
                  return RowVideoTitle(text: data.program.title);
                case 2:
                  return RowVideoTime(
                    broadcastAt: data.program.broadcastAt,
                    totalPlayTime: data.program.totalPlayTime,
                  );
                case 3:
                  return RowVideoTags(textList: data.program.tags);
                case 4:
                  return RowFabs(program: data.program);
                case 5:
                  return RowVideoDesc(text: data.program.detail);
                default:
                  return const SizedBox.shrink();
              }
            }),
      ),
    );
}
