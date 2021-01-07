import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
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
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// part 'screen_detail.g.dart';

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

class ScreenDetail extends StatefulHookWidget {
  const ScreenDetail();

  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  static const double _BOTTOM_BAR_HEIGHT = kBottomNavigationBarHeight;
  static const double _SHRINKED_HEIGHT = 56;
  static const double _SHRINKED_ASPECT_RATIO = 2.5;

  PlayerAnimationManager _pam;

  @override
  void initState() {
    super.initState();
    context.read(pDetailScaffold).key = scaffoldKey;
    _pam = PlayerAnimationManager(this);
  }

  @override
  Widget build(BuildContext context) => useProvider(pDetailId).state == null
      ? const SizedBox.shrink()
      : LayoutBuilder(
          builder: (context, constraints) {
            final shrinkedTop =
                constraints.maxHeight - (_BOTTOM_BAR_HEIGHT + _SHRINKED_HEIGHT);
            return AnimatedBuilder(
              animation: _pam.animation,
              builder: (context, child) =>
                  _animationBuilder(context, child, shrinkedTop),
              child: GestureDetector(
                onTap: _pam.expand,
                onVerticalDragUpdate: (details) =>
                    _onVerticalDragUpdate(details, shrinkedTop),
                onVerticalDragEnd: (details) =>
                    _onVerticalDragEnd(details, shrinkedTop),
                child: _ExpandableWidget(pam: _pam),
              ),
            );
          },
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

  Widget _animationBuilder(
      BuildContext context, Widget child, double shrinkedTop) {
    final expandedRatio = _pam.animation.value;
    final top = shrinkedTop * (1 - expandedRatio);
    final bottom = _BOTTOM_BAR_HEIGHT * (1 - expandedRatio);
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
    _pam.addAnimationValue(delta / shrinkedTop);
  }

  void _onVerticalDragEnd(DragEndDetails details, double shrinkedTop) {
    final threshold = _pam.status == PlayerStatus.shrinked ? 0.3 : 0.7;
    _pam.animation.value > threshold ? _pam.expand() : _pam.collapse();
  }
}

class _ExpandableWidget extends HookWidget {
  const _ExpandableWidget({
    Key key,
    @required this.pam,
  }) : super(key: key);

  final PlayerAnimationManager pam;

  ///todo is this Scaffold necessary?
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: SafeArea(
          child: Scaffold(
              primary: false,
              body: useProvider(
                  detailSNProvider.state.select((it) => it.prgDataResult)).when(
                loading: () => const CenterCircleProgress(),
                preInitialized: () => const CenterCircleProgress(),
                error: () => const PageError(),
                success: _successWidget,
              )),
        ),
      );

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider).playVideo(false);

  Future<bool> _onWillPop(BuildContext context) async {
    final closed = await context.read(detailSNProvider).tryClosePanel();
    if (!closed) return pam.collapse();
    return false;
  }

  Widget _successWidget(ProgramDetailData programDetailData,
          ChannelData channelData, PageSheetModel page) =>
      LayoutBuilder(builder: (context, constraints) {
        final aspectRatio = constraints.maxWidth / constraints.maxHeight;

        if (aspectRatio > _ScreenDetailState._SHRINKED_ASPECT_RATIO - 0.1)
          return _VideoRow(
            data: programDetailData,
            pam: pam,
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
                return _PlayerBody(
                  pam: pam,
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

///todo migrate to functional_widget
class _PlayerBody extends HookWidget {
  const _PlayerBody({
    @required this.pam,
    @required this.height,
    @required this.data,
  });

  final PlayerAnimationManager pam;
  final double height;
  final ProgramDetailData data;

  @override
  Widget build(BuildContext context) => height < 0
      ? const SizedBox.shrink()
      : SizedBox(
          height: height,
          child: FadeTransition(
            opacity: pam.contentFadeAnimation,
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
        );
}

class _VideoRow extends HookWidget {
  const _VideoRow({
    Key key,
    @required this.pam,
    @required this.height,
    @required this.width,
    @required this.data,
  }) : super(key: key);

  final double height;
  final double width;
  final ProgramDetailData data;
  final PlayerAnimationManager pam;
  static const double _BUTTON_W = kMinInteractiveDimension;
  static const double _LEFT_PAD = 8;

  @override
  Widget build(BuildContext context) {
    final maxW = width -
        (_ScreenDetailState._SHRINKED_HEIGHT *
                _ScreenDetailState._SHRINKED_ASPECT_RATIO +
            _LEFT_PAD);
    final videoSpace =
        height * _ScreenDetailState._SHRINKED_ASPECT_RATIO + _LEFT_PAD;
    final currentW = width - videoSpace;
    double spaceRatio = currentW <= 0 ? 0 : currentW / maxW;

    return Stack(
      children: <Widget>[
        if (_BUTTON_W * 2 < currentW)
          Container(
            height: height,
            padding: EdgeInsets.only(
              left: videoSpace,
              right: _BUTTON_W * 2 < currentW ? _BUTTON_W * 2 : 0,
            ),
            alignment: Alignment.center,
            child: Opacity(
              opacity: spaceRatio,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _text(
                    isTitle: true,
                    text: data.program.title,
                  ),
                  _text(
                    isTitle: false,
                    text: data.program.channel.name,
                  ),
                ],
              ),
            ),
          ),
        if (_BUTTON_W < currentW)
          Positioned(
            height: height,
            right: _BUTTON_W * 2 < currentW ? _BUTTON_W : currentW - _BUTTON_W,
            child: Opacity(
              opacity: spaceRatio,
              child: IconButton(
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: spaceRatio == 1 ? () {} : null,
              ),
            ),
          ),
        Positioned(
          height: height,
          right: _BUTTON_W < currentW ? 0 : currentW - _BUTTON_W,
          child: Opacity(
            opacity: spaceRatio,
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed:
                    spaceRatio == 1 ? () => _onTapCloseBtn(context) : null,
              ),
            ),
          ),
        ),
        _Video(
          pam: pam,
          height: height,
        ),
      ],
    );
  }

  void _onTapCloseBtn(BuildContext context) =>
      context.read(pDetailId).state = null;

  Widget _text({
    @required bool isTitle,
    @required String text,
  }) =>
      Container(
        padding: isTitle
            ? const EdgeInsets.only(bottom: 3)
            : const EdgeInsets.only(top: 3),
        height: _ScreenDetailState._SHRINKED_HEIGHT / 2,
        alignment: isTitle ? Alignment.bottomCenter : Alignment.topCenter,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: isTitle ? Colors.white : Styles.colorTextSub,
            fontSize: 13,
            height: 1,
          ),
        ),
      );
}

class _Video extends HookWidget {
  const _Video({
    Key key,
    @required this.height,
    @required this.pam,
  }) : super(key: key);

  static final _aspectTween = Tween<double>(
    begin: _ScreenDetailState._SHRINKED_ASPECT_RATIO,
    end: Dimens.IMG_RATIO,
  );

  final PlayerAnimationManager pam;
  final double height;

  @override
  Widget build(BuildContext context) {
    final aspectRatio = _aspectTween.evaluate(pam.animation);
    return Positioned(
      height: height,
      width: height * aspectRatio,
      child: const MinimizedPlayerView(),
    );
  }
}
