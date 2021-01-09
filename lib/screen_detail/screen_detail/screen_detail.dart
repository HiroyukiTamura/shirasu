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
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/minimized_player_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_row.dart';
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

final _pHasPlayerBtmPadding = StateProvider.autoDispose<bool>((ref) =>
    ref.watch(pcnAppRouterDelegate).appState.last is PathDataMainPageBase);

final pPlayerBtmPadding = Provider.autoDispose<double>((ref) =>
    ref.watch(_pHasPlayerBtmPadding).state ? kBottomNavigationBarHeight : 0);

final pDetailId = StateProvider.autoDispose<String>((_) => null);

final detailSNProvider =
    StateNotifierProvider.autoDispose<ViewModelDetail>((ref) {
  final id = ref.watch(pDetailId).state;
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
Widget screenDetailWrapper() => useProvider(pDetailId).state == null
    ? const SizedBox.shrink()
    : const _ScreenDetail();

class _ScreenDetail extends StatefulHookWidget {
  const _ScreenDetail();

  @override
  ScreenDetailState createState() => ScreenDetailState();
}

class ScreenDetailState extends State<_ScreenDetail> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  static const double SHRINKED_HEIGHT = 56;
  static const double SHRINKED_ASPECT_RATIO = 2.5;

  @override
  void initState() {
    super.initState();
    context.read(pDetailScaffold).key = scaffoldKey;
  }

  @override
  Widget build(BuildContext context) {
    final pam = PlayerAnimationManager.instance;
    final btmBarH = useProvider(pPlayerBtmPadding);
    return LayoutBuilder(
      builder: (context, constraints) {
        final shrinkedTop = constraints.maxHeight - (btmBarH + SHRINKED_HEIGHT);
        return AnimatedBuilder(
          animation: pam.animation,
          builder: (context, child) =>
              _animationBuilder(context, child, shrinkedTop),
          child: GestureDetector(
            onTap: pam.expand,
            onVerticalDragUpdate: (details) =>
                _onVerticalDragUpdate(details, shrinkedTop),
            onVerticalDragEnd: (details) =>
                _onVerticalDragEnd(details, shrinkedTop),
            child: const _ExpandableWidget(),
          ),
        );
      },
    );
  }

  Widget _animationBuilder(
      BuildContext context, Widget child, double shrinkedTop) {
    final expandedRatio = PlayerAnimationManager.instance.animation.value;
    final top = shrinkedTop * (1 - expandedRatio);
    final bottom = context.read(pPlayerBtmPadding) * (1 - expandedRatio);
    return Stack(
      //todo can remove?
      children: [
        Positioned(
          top: top,
          right: 0,
          left: 0,
          bottom: bottom,
          child: child,
        ),
      ],
    );
  }

  void _onVerticalDragUpdate(DragUpdateDetails details, double shrinkedTop) {
    final delta = -details.primaryDelta;
    PlayerAnimationManager.instance.addAnimationValue(delta / shrinkedTop);
  }

  void _onVerticalDragEnd(DragEndDetails details, double shrinkedTop) {
    final pam = PlayerAnimationManager.instance;
    final threshold = pam.status == PlayerStatus.SHRINKED ? 0.2 : 0.8;
    pam.animation.value > threshold ? pam.expand() : pam.collapse();
  }
}

class _ExpandableWidget extends HookWidget {
  const _ExpandableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ColoredBox(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: useProvider(
              detailSNProvider.state.select((it) => it.prgDataResult)).when(
            loading: () => const CenterCircleProgress(),
            preInitialized: () => const CenterCircleProgress(),
            error: () => const PageError(),
            success: _successWidget,
          ),
        ),
      );

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider).playVideo(false);

  Widget _successWidget(ProgramDetailData programDetailData,
      ChannelData channelData, PageSheetModel page) {
    final pam = PlayerAnimationManager.instance;
    return LayoutBuilder(builder: (context, constraints) {
      final aspectRatio = constraints.maxWidth / constraints.maxHeight;

      if (aspectRatio > ScreenDetailState.SHRINKED_ASPECT_RATIO - 0.1)
        return VideoRow(
          data: programDetailData,
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        );

      double headerH = constraints.maxWidth / Dimens.IMG_RATIO;
      final listViewH = constraints.maxHeight - headerH;
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return pam.animation.value == 1
                  ? VideoHeader(
                      height: headerH,
                      programId: programDetailData.program.id,
                      onTap: () async => _playVideo(context, true),
                      onTapPreviewBtn: () async => _playVideo(context, false),
                    )
                  : SizedBox(
                      height: headerH,
                      child: const MinimizedPlayerView(),
                    );
            case 1:
              return _PlayerBodyWrapper(
                height: listViewH,
                data: programDetailData,
              );
            default:
              throw Exception(index);
          }
        },
        itemCount: 2,
      );
    });
  }
}

class _BottomSheet extends HookWidget {
  const _BottomSheet({
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

  Future<void> _onClearClicked(BuildContext context) async =>
      context.read(detailSNProvider).panelController.close();
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
  Widget build(BuildContext context) {
    final opacity = PlayerAnimationManager.instance.contentFadeAnimation;
    return SizedBox(
      height: height,
      child: FadeTransition(
        opacity: opacity,
        child: IgnorePointer(
          ignoring: opacity.value != 1,
          child: SlidingUpPanel(
            minHeight: 0,
            maxHeight: height,
            controller: useProvider(detailSNProvider).panelController,
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
        ),
      ),
    );
  }
}
