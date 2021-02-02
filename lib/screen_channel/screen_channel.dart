import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
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
import 'package:shirasu/viewmodel/message_notifier.dart';
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
            return _Content(
              channelData: channelData,
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
    @required this.isAnnouncementEmpty,
  }) : super(key: key);

  final ChannelData channelData;
  final bool isAnnouncementEmpty;

  String get channelId => channelData.channel.id;

  @override
  Widget build(BuildContext context) {
    final initialLength = isAnnouncementEmpty ? 2 : 3;

    final tabController = useTabController(
        initialLength: initialLength,
        initialIndex: useProvider(channelProvider(channelId)).tabIndex);
    _initTabListener(context, tabController);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _RowHeaderImg(channelId: channelData.channel.id,),
        const SizedBox(height: 24),
        _RowChannelName(
          channel: channelData.channel,
        ),
        const SizedBox(height: 16),
        _RowBillingBtn(
          channel: channelData.channel,
        ),
        const SizedBox(height: 16),
        _RowTab(
          isAnnouncementEmpty: isAnnouncementEmpty,
          controller: tabController,
        ),
        const _RowSeem(),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              PageChannelDetail(text: channelData.channel.detail),
              PageMovieList(
                onTapItem: (context, prgId) async =>
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

  void _initTabListener(BuildContext context, TabController tabController) {
    useEffect(() {
      void listener() => context.read(channelProvider(channelId)).tabIndex =
          tabController.index;
      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);
  }
}

@swidget
Widget _rowHeaderImg({
  @required String channelId,
}) =>
    AspectRatio(
      aspectRatio: Dimens.HEADER_ASPECT,
      child: CachedNetworkImage(
        imageUrl: UrlUtil.getChannelHeaderUrl(channelId),
        errorWidget: (context, url, e) {
          Util.onImageError(url: url, error: e);
          return const SizedBox.shrink();
        },
      ),
    );

@swidget
Widget _rowChannelName({@required Channel channel}) => ContentCell(
      child: Row(
        children: [
          CachedNetworkImage(
            height: _CHANNEL_LOGO_SIZE,
            width: _CHANNEL_LOGO_SIZE,
            imageUrl: UrlUtil.getChannelLogoUrl(channel.id),
            errorWidget: Util.defaultChannelIcon,
          ),
          const SizedBox(width: 24),
          Text(
            channel.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );

class _RowBillingBtn extends StatelessWidget {
  const _RowBillingBtn({Key key, this.channel}) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) => ContentCell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (channel.subscriptionPlan?.viewerPurchasedPlan?.isActive == true)
              PurchasedBannerMedium(
                onTap: () async => _onTapSubscribeBtn(context),
              )
            else if (channel.subscriptionPlan?.isPurchasable == true)
              BillingBtnMedium(
                amountWithTax: channel.subscriptionPlan.amountWithTax,
                currencyAsSuffix: channel.subscriptionPlan.currencyAsSuffix,
                onTap: () async => _onTapSubscribeBtn(context),
              )
            else
              const SizedBox.shrink(),
            Visibility(
              visible: false,
              child: IconButton(
                icon: Icon(
                  Icons.add_alert,
                  color: Styles.colorTextSub,
                ),
                onPressed: () {}, //todo implement
              ),
            ),
          ],
        ),
      );

  Future<void> _onTapSubscribeBtn(BuildContext context) async =>
      BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.channelId2Url(channel.id),
        child: const Text(Strings.BTM_SHEET_MSG_CREDIT_CARD),
        snackCallback: (SnackMsg msg) {
          //todo implement
        },
      );
}

@swidget
Widget _rowTab({
  @required TabController controller,
  @required bool isAnnouncementEmpty,
}) =>
    ContentCell(
      child: TabBar(
          labelColor: Colors.white,
          controller: controller,
          isScrollable: true,
          tabs: [
            const Tab(text: Strings.CHANNEL_TAB_DESC),
            const Tab(text: Strings.CHANNEL_TAB_MOVIE),
            if (!isAnnouncementEmpty)
              const Tab(text: Strings.CHANNEL_TAB_NOTIFICATION),
          ]),
    );

@swidget
Widget _rowSeem() => SizedBox(
      height: .5,
      child: ColoredBox(
        color: Styles.colorTextSub,
      ),
    );
