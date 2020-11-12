import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/row_video_header.dart';
import 'package:shirasu/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/row_video_title.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final detailProvider = ChangeNotifierProvider.autoDispose
    .family<ViewModelDetail, String>((ref, id) => ViewModelDetail(id));

class ScreenDetail extends StatefulWidget {
  const ScreenDetail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  _ScreenDetailState createState() => _ScreenDetailState(id);
}

class _ScreenDetailState extends State<ScreenDetail> {
  _ScreenDetailState(this._id);

  final String _id;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
        (_) async => context.read(detailProvider(_id)).setUpData());
  }

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
        body: _PrgResultHookedWidget(id: _id),
      ),
    );
//
// static Widget contentWidget() => ListView.builder(
//     itemCount: 17,
//     itemBuilder: (context, index) {
//       switch (index) {
//         case 0:
//           return AspectRatio(
//             aspectRatio: Dimens.IMG_RATIO,
//             child: CachedNetworkImage(imageUrl: _IMG_URL),
//           );
//         case 1:
//           return SizedBox(height: 16);
//         case 2:
//           return RowChannel(
//             title: _CHANNEL_TITLE,
//             imageUrl: _CHANNEL_IMG_URL,
//           );
//         case 3:
//           return SizedBox(height: 12);
//         // case 2:
//         //   return Padding(
//         //     padding: const EdgeInsets.symmetric(horizontal: 8),
//         //     child: Row(
//         //       children: [
//         //         Container(
//         //           padding: EdgeInsets.symmetric(
//         //               horizontal: 8, vertical: 2),
//         //           decoration: BoxDecoration(
//         //               color: Theme.of(context).primaryColor,
//         //               borderRadius: BorderRadius.circular(20)),
//         //           child: Text(
//         //             '放送中',
//         //             style: TextStyle(
//         //               color: Colors.white,
//         //             ),
//         //           ),
//         //         ),
//         //         SizedBox(
//         //           width: 8,
//         //         ),
//         //         Container(
//         //           padding: EdgeInsets.symmetric(
//         //               horizontal: 8, vertical: 2),
//         //           decoration: BoxDecoration(
//         //               color: Theme.of(context).primaryColor,
//         //               borderRadius: BorderRadius.circular(20)),
//         //           child: Text(
//         //             '購入済',
//         //             style: TextStyle(
//         //               color: Colors.white,
//         //             ),
//         //           ),
//         //         ),
//         //       ],
//         //     ),
//         //   );
//         // case 3:
//         //   return SizedBox(
//         //     height: 8,
//         //   );
//         case 4:
//           return RowVideoTitle(text: _VIDEO_TITLE);
//         case 5:
//           return SizedBox(height: 4);
//         case 6:
//           return RowVideoTime(text: _VIDEO_TIME);
//         case 7:
//           return SizedBox(height: 16);
//         case 8:
//           return RowVideoTags(textList: _TAG_LIST);
//         case 9:
//           return SizedBox(height: 36);
//         case 10:
//           return BillingBtn(text: _BILLING_PROMO_ONE_TIME);
//         case 11:
//           return SizedBox(height: 16);
//         case 12:
//           return BillingBtn(text: BILLING_PROMO_CHANNEL);
//         case 13:
//           return SizedBox(height: 36);
//         case 14:
//           return RowFabs();
//         case 15:
//           return SizedBox(height: 36);
//         case 16:
//           return RowVideoDesc(text: _VIDEO_DESC);
//         default:
//           return SizedBox();
//         // throw Exception('unexpected index $index');
//       }
//     });
//
// static Widget contentWidgetBilledOneTime() => ListView.builder(
//     itemCount: 15,
//     itemBuilder: (context, index) {
//       switch (index) {
//         case 0:
//           return AspectRatio(
//             aspectRatio: Dimens.IMG_RATIO,
//             child: CachedNetworkImage(imageUrl: _IMG_URL),
//           );
//         case 1:
//           return SizedBox(height: 16);
//         case 2:
//           return RowChannel(
//             title: _CHANNEL_TITLE,
//             imageUrl: _CHANNEL_IMG_URL,
//           );
//         case 3:
//           return SizedBox(height: 12);
//         case 4:
//           return RowVideoTitle(text: _VIDEO_TITLE);
//         case 5:
//           return SizedBox(height: 4);
//         case 6:
//           return RowVideoTime(text: _VIDEO_TIME);
//         case 7:
//           return SizedBox(height: 16);
//         case 8:
//           return RowVideoTags(textList: _TAG_LIST);
//         case 9:
//           return SizedBox(height: 36);
//         case 10:
//           return ContentCell(
//             child: Row(
//               children: [
//                 BillingBtnThin(text: _BILLING_PROMO_ONE_TIME_M),
//                 SizedBox(width: 16),
//                 BillingBtnThin(text: BILLING_PROMO_CHANNEL_M),
//               ],
//             ),
//           );
//         case 11:
//           return SizedBox(height: 36);
//         case 12:
//           return RowFabs();
//         case 13:
//           return SizedBox(height: 36);
//         case 14:
//           return RowVideoDesc(text: _VIDEO_DESC);
//         default:
//           return SizedBox();
//       }
//     });
}

class _PrgResultHookedWidget extends HookWidget {
  const _PrgResultHookedWidget({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final result =
        useProvider(detailProvider(id).select((value) => value.prgDataResult));
    if (result == null)
      return const Center(
        child: CircularProgressIndicator(),
      );
    else if (result is PrgDetailResultError)
      return Container(); //todo show error widget
    else if (result is PrgDetailResultSuccess) {
      return _ContentWidget(data: result.programDetailData);
    } else
      throw Exception('unexpected type ${result.runtimeType}');
  }
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget({Key key, this.data}) : super(key: key);

  final ProgramDetailData data;

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: 15,
      padding: const EdgeInsets.only(
        bottom: 24,
        right: Dimens.MARGIN_OUTLINE,
        left: Dimens.MARGIN_OUTLINE,
      ),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return RowHeader(
              programId: data.program.id,
              onTap: () =>
                  context.read(detailProvider(data.program.id)).playVideo(),
            );
          case 1:
            return const SizedBox(height: 16);
          case 2:
            return RowChannel(
              title: data.program.channel.name,
              imageUrl: ApiClient.getChannelLogoUrl(data.program.channelId),
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
            return RowFabs();
          case 11:
            return const SizedBox(height: 36);
          case 12:
            return RowVideoDesc(text: data.program.detail);
          default:
            return const SizedBox();
        }
      });
}
