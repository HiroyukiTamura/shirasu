import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/di/url_util.dart';
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
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:after_layout/after_layout.dart';

final detailProvider = StateNotifierProvider.autoDispose
    .family<ViewModelDetail, String>((_, id) => ViewModelDetail(id));

final videoProvider = Provider<VideoHolder>((ref) => VideoHolder());

class ScreenDetail extends StatefulWidget {
  const ScreenDetail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  _ScreenDetailState createState() => _ScreenDetailState(id);
}

class _ScreenDetailState extends State<ScreenDetail>
    with AfterLayoutMixin<ScreenDetail> {
  _ScreenDetailState(this._id);

  final String _id;

  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(detailProvider(_id)).initialize();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: _PrgResultHookedWidget(id: _id),
        ),
      );
}

class _PrgResultHookedWidget extends HookWidget {
  const _PrgResultHookedWidget({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) =>
      useProvider(detailProvider(id).select((value) => value.state.prgDataResult))
          .when(
        loading: () => const CenterCircleProgress(),
        preInitialized: () => const CenterCircleProgress(),
        success: (data) => _ContentWidget(data: data),
        error: () => const PageError(),
      );
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
                onTap: () => context
                    .read(detailProvider(data.program.id))
                    .playVideo(), //todo don't context.read in onTap
              ),
              SizedBox(
                height: listViewH,
                child: ListView.builder(
                    itemCount: 14,
                    padding: const EdgeInsets.only(
                      bottom: 24,
                      right: Dimens.MARGIN_OUTLINE,
                      left: Dimens.MARGIN_OUTLINE,
                    ),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 1:
                          return const SizedBox(height: 16);
                        case 2:
                          return RowChannel(
                            title: data.program.channel.name,
                            imageUrl: UrlUtil.getChannelLogoUrl(
                                data.program.channelId),
                          );
                        case 3:
                          return const SizedBox(height: 12);
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
                        // case 10:
                        //   return ContentCell(
                        //     child: Row(
                        //       children: [
                        //         if (data.program.onetimePlans.any((element) => false))
                        //         BillingBtnThin(text: data.program.totalPlayTime),
                        //         SizedBox(width: 16),
                        //         BillingBtnThin(text: BILLING_PROMO_CHANNEL_M),
                        //       ],
                        //     ),
                        //   );
                        // case 11:
                        //   return SizedBox(height: 36);
                        case 10:
                          return RowFabs(
                            handouts: data.program.handouts,
                          );
                        case 11:
                          return const SizedBox(height: 36);
                        case 12:
                          return RowVideoDesc(text: data.program.detail);
                        default:
                          return const SizedBox();
                      }
                    }),
              ),
            ],
          );
        },
      );
}
