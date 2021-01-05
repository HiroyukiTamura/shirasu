import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/viewmodel_detail_controller.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

final pDetailController =
    StateNotifierProvider.autoDispose<ViewModelDetailController>(
        (_) => ViewModelDetailController());

final pDetailId = Provider.autoDispose<String>(
    (ref) => ref.watch(pDetailController.state).id);

final detailSNProvider =
    StateNotifierProvider.autoDispose<ViewModelDetail>((ref) {
  final id = ref.watch(pDetailId);
  return ViewModelDetail(id, ref);
});

final _pBtmSheetExpanded = Provider.autoDispose<PageSheetModel>(
  (ref) => ref.watch(detailSNProvider.state).prgDataResult.maybeWhen(
        success: (programDetail, channelData, page) => page,
        orElse: () => const PageSheetModel.hidden(),
      ),
);

final videoProvider = Provider<VideoHolder>((ref) => VideoHolder());

final pDetailScaffold = Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

@hwidget
Widget screenDetail() => useProvider(pDetailId) == null
    ? const SizedBox.shrink()
    : const ScreenDetailContent();

class ScreenDetailContent extends StatefulHookWidget {
  const ScreenDetailContent();

  @override
  _ScreenDetailContentState createState() => _ScreenDetailContentState();
}

class _ScreenDetailContentState extends State<ScreenDetailContent> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    context.read(pDetailScaffold).key = scaffoldKey;
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: MsgNtfListener(
            child: useProvider(
                detailSNProvider.state.select((it) => it.prgDataResult)).when(
              loading: () => const CenterCircleProgress(),
              preInitialized: () => const CenterCircleProgress(),
              success: (programDetailData, channelData, page) =>
                  _ContentWidget(data: programDetailData),
              error: () => const PageError(),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    context.read(pDetailScaffold).key = null;
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.dependOnInheritedWidgetOfExactType();
  }
}

class _ContentWidget extends HookWidget {
  const _ContentWidget({Key key, @required this.data}) : super(key: key);

  final ProgramDetailData data;

  @override
  Widget build(BuildContext _) {
    final panelController = useProvider(detailSNProvider).panelController;
    return LayoutBuilder(
        builder: (context, constrains) {
          final headerH = constrains.maxWidth / Dimens.IMG_RATIO;
          final listViewH = constrains.maxHeight - headerH;
          return Column(
            children: [
              VideoHeader(
                height: headerH,
                programId: data.program.id,
                onTap: () async => _playVideo(context, true),
                onTapPreviewBtn: () async => _playVideo(context, false),
              ),
              Expanded(
                child: SlidingUpPanel(
                  minHeight: 0,
                  maxHeight: listViewH,
                  controller: panelController,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  panel: BottomSheet(program: data.program),
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
              ),
            ],
          );
        },
      );
  }

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider).playVideo(false);
}

class BottomSheet extends HookWidget {
  const BottomSheet({
    Key key,
    @required this.program,
  }) : super(key: key);

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) => useProvider(_pBtmSheetExpanded).when(
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

  Future<void> _onClearClicked(BuildContext context) async => context.read(detailSNProvider).panelController.close();
}
