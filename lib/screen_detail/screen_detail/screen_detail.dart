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
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

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
Widget screenDetail() => useProvider(pDetailId).state == null
    ? const SizedBox.shrink()
    : const ScreenDetailContent();

class ScreenDetailContent extends StatefulHookWidget {
  const ScreenDetailContent();

  @override
  _ScreenDetailContentState createState() => _ScreenDetailContentState();
}

class _ScreenDetailContentState extends State<ScreenDetailContent>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  PlayerAnimationManager _pam;

  @override
  void initState() {
    super.initState();
    context.read(pDetailScaffold).key = scaffoldKey;
    _pam = PlayerAnimationManager(this);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: WillPopScope(
          onWillPop: _onWillPop,
          child: useProvider(
              detailSNProvider.state.select((it) => it.prgDataResult)).when(
            loading: () => const CenterCircleProgress(),
            preInitialized: () => const CenterCircleProgress(),
            success: (programDetailData, channelData, page) => EpisodePlayer(
              data: programDetailData,
              pam: _pam,
            ),
            error: () => const PageError(),
          ),
        ),
      );

  @override
  void dispose() {
    context.read(pDetailScaffold).key = null;
    _pam.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.dependOnInheritedWidgetOfExactType();
  }

  Future<bool> _onWillPop() async {
    final closed = await context.read(detailSNProvider).tryClosePanel();
    if (!closed) return _pam.collapse();
    return false;
  }
}

class EpisodePlayer extends StatelessWidget {
  const EpisodePlayer({
    Key key,
    @required this.pam,
    @required this.data,
  }) : super(key: key);

  static const _margin = 8.0;
  static const _bottomBarHeight = 48.0;
  static const _SHRINKED_HEIGHT = kBottomNavigationBarHeight;
  static const _shrinkedAspectRatio = 2.5;

  final PlayerAnimationManager pam;
  final ProgramDetailData data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      const shrinkedBottom = _bottomBarHeight + _margin;
      final shrinkedTop = constraints.maxHeight - (shrinkedBottom + _SHRINKED_HEIGHT);
      return AnimatedBuilder(
        animation: pam.animation,
        builder: (context, child) {
          final expandedRatio = pam.animation.value;
          final top = shrinkedTop * (1 - expandedRatio);
          final margin = (1 - expandedRatio) * _margin;
          final bottom = (1 - expandedRatio) * shrinkedBottom + margin;
          return Stack(
            children: [
              Positioned(
                top: top,
                left: margin,
                right: margin,
                bottom: bottom,
                child: child,
              ),
            ],
          );
        },
        child: GestureDetector(
          onTap: pam.expand,
          onVerticalDragUpdate: (details) {
            final delta = -details.primaryDelta;
            pam.addAnimationValue(delta / shrinkedTop);
          },
          onVerticalDragEnd: (details) {
            final threshold = pam.status == PlayerStatus.shrinked ? 0.3 : 0.7;
            pam.animation.value > threshold ? pam.expand() : pam.collapse();
          },
          child: Scaffold(
            primary: false,
            body: _ContentWidget(
              data: data,
              pam: pam,
            ),
          ),
        ),
      );
    },);
  }
}

class _ContentWidget extends HookWidget {
  const _ContentWidget({
    Key key,
    @required this.pam,
    @required this.data,
  }) : super(key: key);

  final ProgramDetailData data;
  final PlayerAnimationManager pam;

  @override
  Widget build(BuildContext _) {
    final panelController = useProvider(detailSNProvider).panelController;
    return LayoutBuilder(
      builder: (context, constraints) {
        final aspectRatio = constraints.maxWidth / constraints.maxHeight;
        if (aspectRatio > EpisodePlayer._shrinkedAspectRatio - 0.1)
          return _VideoRow(pam: pam);

        final headerH = constraints.maxWidth / Dimens.IMG_RATIO;
        final listViewH = constraints.maxHeight - headerH;
        return Column(
          children: [
            VideoHeader(
              height: headerH,
              programId: data.program.id,
              onTap: () async => _playVideo(context, true),
              onTapPreviewBtn: () async => _playVideo(context, false),
            ),
            Expanded(
              child: FadeTransition(
                opacity: pam.contentFadeAnimation,
                child: SlidingUpPanel(
                  minHeight: 0,
                  maxHeight: listViewH,
                  controller: panelController,
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
          ],
        );
      },
    );
  }

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider).playVideo(false);
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

class _VideoRow extends StatelessWidget {
  const _VideoRow({
    Key key,
    @required this.pam,
  }) : super(key: key);

  final PlayerAnimationManager pam;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Stack(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
                width: EpisodePlayer._SHRINKED_HEIGHT *
                        EpisodePlayer._shrinkedAspectRatio +
                    4.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'タイトル',
                    maxLines: 1,
                    style: textTheme.caption,
                  ),
                  Text(
                    'チャンネル名',
                    maxLines: 1,
                    style: textTheme.overline,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
            )
          ],
        ),
        _Video(pam: pam),
      ],
    );
  }
}

class _Video extends HookWidget {
  const _Video({
    Key key,
    @required this.pam,
  }) : super(key: key);

  static final _aspectTween = Tween<double>(
    begin: EpisodePlayer._shrinkedAspectRatio,
    end: 16 / 9,
  );

  final PlayerAnimationManager pam;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pam.animation,
      builder: (context, child) => AspectRatio(
        aspectRatio: _aspectTween.evaluate(pam.animation),
        child: child,
      ),
      child: const Placeholder(),
    );
  }
}
