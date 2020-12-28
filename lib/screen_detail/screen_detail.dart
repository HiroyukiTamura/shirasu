import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/in_player_app_router_delegate.dart';
import 'package:shirasu/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/video_header.dart';
import 'package:shirasu/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final detailSNProvider = StateNotifierProvider.autoDispose
    .family<ViewModelDetail, String>((_, id) => ViewModelDetail(id));

final videoProvider = Provider<VideoHolder>((ref) => VideoHolder());

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScreenDetail extends StatefulHookWidget {
  const ScreenDetail({
    @required this.appState,
    Key key,
    this.id,
  }) : super(key: key);

  final String id;
  final GlobalAppState appState;

  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {
  InPlayerAppRouterDelegate _routerDelegate;
  ChildBackButtonDispatcher _backButtonDispatcher;

  @override
  void initState() {
    super.initState();
    _routerDelegate = InPlayerAppRouterDelegate(widget.appState);
    context.read(scaffoldProvider).key = GlobalKey<ScaffoldState>();
  }

  @override
  void dispose() {
    super.dispose();
    _routerDelegate.dispose();
  }

  @override
  void didUpdateWidget(covariant ScreenDetail oldWidget) {
    super.didUpdateWidget(oldWidget);
    _routerDelegate.appState = widget.appState;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Defer back button dispatching to the child router
    _backButtonDispatcher = Router.of(context)
        .backButtonDispatcher
        .createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    _backButtonDispatcher.takePriority();

    return SafeArea(
      child: Scaffold(
        key: useProvider(scaffoldProvider).key,
        body: Scaffold(
          body: Stack(
            children: [
              Router(
                routerDelegate: _routerDelegate,
                backButtonDispatcher: _backButtonDispatcher,
              ),
              if (widget.id == null)
                const SizedBox.shrink()
              else
                Scaffold(
                  body: useProvider(detailSNProvider(widget.id)
                      .state
                      .select((it) => it.prgDataResult)).when(
                    loading: () => const CenterCircleProgress(),
                    preInitialized: () => const CenterCircleProgress(),
                    success: (programDetailData, channelData) =>
                        _ContentWidget(data: programDetailData),
                    error: () => const PageError(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget({Key key, this.data}) : super(key: key);

  final ProgramDetailData data;

  @override
  Widget build(BuildContext _) => LayoutBuilder(
        builder: (context, constrains) {
          final headerH = constrains.maxWidth / Dimens.IMG_RATIO;
          final listViewH = constrains.maxHeight - headerH;
          return Column(
            children: [
              VideoHeader(
                height: headerH,
                programId: data.program.id,
                onTap: () async => context
                    .read(detailSNProvider(data.program.id))
                    .playVideo(false),
                onTapPreviewBtn: () async => context
                    .read(detailSNProvider(data.program.id))
                    .playVideo(true),
              ),
              SizedBox(
                height: listViewH,
                child: ListView.builder(
                    itemCount: 14,
                    padding: const EdgeInsets.only(bottom: 24),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 3:
                          return RowChannel(
                            channelId: data.program.channelId,
                            title: data.program.channel.name,
                          );
                        case 4:
                          return RowVideoTitle(text: data.program.title);
                        case 5:
                          return const SizedBox(height: 4);
                        case 6:
                          return RowVideoTime(
                            broadcastAt: data.program.broadcastAt,
                            totalPlayTime: data.program.totalPlayTime,
                          );
                        case 7:
                          return const SizedBox(height: 16);
                        case 8:
                          return RowVideoTags(textList: data.program.tags);
                        case 9:
                          return const SizedBox(height: 36);
                        case 10:
                          return Visibility(
                            visible: false,
                            child: RowFabs(
                              handouts: data.program.handouts,
                            ),
                          );
                        case 11:
                          return const Visibility(
                            visible: false,
                            child: SizedBox(height: 36),
                          );
                        case 12:
                          return RowVideoDesc(text: data.program.detail);
                        default:
                          return const SizedBox.shrink();
                      }
                    }),
              ),
            ],
          );
        },
      );
}
