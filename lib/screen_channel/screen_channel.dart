import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/dialog/btm_sheet_common.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';
import 'package:shirasu/screen_channel/page_channel_detail.dart';
import 'package:shirasu/screen_channel/page_movie_list.dart';
import 'package:shirasu/screen_channel/page_notification.dart';
import 'package:shirasu/screen_detail/screen_detail/billing_btn.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/extension.dart';

part 'screen_channel.g.dart';

final channelProvider = StateNotifierProvider.autoDispose
    .family<ViewModelChannel, String>((ref, id) => ViewModelChannel(ref, id));

const double _CHANNEL_LOGO_SIZE = 32;

@hwidget
Widget screenChannel(
  BuildContext context, {
  @required String channelId,
}) =>
    SafeArea(
      child: Scaffold(
        body: useProvider(
            channelProvider(channelId).state.select((it) => it.result)).when(
          preInitialized: () => const CenterCircleProgress(),
          loading: () => const CenterCircleProgress(),
          error: () => const PageError(),
          success: (channelData) {
            final isAnnouncementEmpty =
                channelData.channel.announcements.items.isEmpty;
            final initialLength = isAnnouncementEmpty ? 2 : 3;
            final tabController = useTabController(
                initialLength: initialLength,
                initialIndex: useProvider(channelProvider(channelId)).tabIndex);
            tabController.addListener(() => context
                .read(channelProvider(channelId))
                .tabIndex = tabController.index);
            return _Content(
              channelData: channelData,
              tabController: tabController,
              isAnnouncementEmpty: isAnnouncementEmpty,
            );
          },
        ),
      ),
    );

class _Content extends HookWidget {
  const _Content({
    Key key,
    @required this.channelData,
    @required this.tabController,
    @required this.isAnnouncementEmpty,
  }) : super(key: key);

  final ChannelData channelData;
  final TabController tabController;
  final bool isAnnouncementEmpty;

  @override
  Widget build(BuildContext context) {
    final _headerUrl = UrlUtil.getChannelHeaderUrl(channelData.channel.id);
    final _logoUrl = UrlUtil.getChannelLogoUrl(channelData.channel.id);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: Dimens.HEADER_ASPECT,
          child: CachedNetworkImage(imageUrl: _headerUrl),
        ),
        const SizedBox(height: 24),
        ContentCell(
          child: Row(
            children: [
              CachedNetworkImage(
                height: _CHANNEL_LOGO_SIZE,
                width: _CHANNEL_LOGO_SIZE,
                imageUrl: _logoUrl,
                errorWidget: Util.defaultChannelIcon,
              ),
              const SizedBox(width: 24),
              Text(
                channelData.channel.name,
                style: TextStyles.CHANNEL_NAME,
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        ContentCell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (channelData.channel.subscriptionPlan?.viewerPurchasedPlan
                      ?.isActive ==
                  true)
                PurchasedBannerMedium(
                  onTap: () async => _onTapSubscribeBtn(context),
                )
              else if (channelData.channel.subscriptionPlan?.isPurchasable ==
                  true)
                BillingBtnMedium(
                  amountWithTax:
                      channelData.channel.subscriptionPlan.amountWithTax,
                  currencyAsSuffix:
                      channelData.channel.subscriptionPlan.currencyAsSuffix,
                  onTap: () async => _onTapSubscribeBtn(context),
                )
              else
                const SizedBox.shrink(),
              IconButton(
                icon: Icon(
                  Icons.add_alert,
                  color: Styles.colorTextSub,
                ),
                onPressed: () {}, //todo implement
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ContentCell(
          child: TabBar(
              labelColor: Colors.white,
              controller: tabController,
              isScrollable: true,
              tabs: [
                const Tab(text: Strings.CHANNEL_TAB_DESC),
                const Tab(text: Strings.CHANNEL_TAB_MOVIE),
                if (!isAnnouncementEmpty)
                  const Tab(text: Strings.CHANNEL_TAB_NOTIFICATION),
              ]),
        ),
        SizedBox(
          height: .5,
          child: ColoredBox(
            color: Colors.white.withOpacity(.7),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              PageChannelDetail(text: channelData.channel.detail),
              PageMovieList(
                onTapItem: (BuildContext context, String prgId) async =>
                    context.pushProgramPage(prgId),
                channelId: channelData.channel.id,
              ),
              if (!isAnnouncementEmpty)
                PageNotification(
                    announcements: channelData.channel.announcements),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _onTapSubscribeBtn(BuildContext context) async =>
      BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.channelId2Url(channelData.channel.id),
        child: const Text(Strings.BTM_SHEET_MSG_CREDIT_CARD),
      );
}
