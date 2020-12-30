import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
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
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'screen_detail.g.dart';

final pDetailId =
    StateNotifierProvider.autoDispose<StateController<String>>((_) => StateController(null));

final detailSNProvider =
    StateNotifierProvider.autoDispose<ViewModelDetail>((ref) {
  final id = ref.watch(pDetailId.state);
  return ViewModelDetail(id);
});

final videoProvider = Provider<VideoHolder>((ref) => VideoHolder());

final pDetailScaffold =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

@hwidget
Widget screenDetail() => useProvider(pDetailId.state) == null
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
            success: (programDetailData, channelData) =>
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
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget({Key key, @required this.data}) : super(key: key);

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
                onTap: () async => _playVideo(context, true),
                onTapPreviewBtn: () async => _playVideo(context, false),
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
                            title: data.program.channel.name,
                            channelId: data.program.channel.id,
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
                          return RowFabs(
                            program: data.program,
                          );
                        case 11:
                          return const SizedBox(height: 36);
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

  Future<void> _playVideo(BuildContext context, bool isPreview) async => context
        .read(detailSNProvider)
        .playVideo(false);
}
