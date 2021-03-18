import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/btm_sheet/btm_sheet_common.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';
import 'package:shirasu/screen_channel/page_channel_detail.dart';
import 'package:shirasu/screen_channel/page_movie_list.dart';
import 'package:shirasu/screen_channel/page_notification.dart';
import 'package:shirasu/ui_common/billing_btn.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';
import 'package:shirasu/extension.dart';

part 'screen_channel.g.dart';

final kPrvViewModelChannel = StateNotifierProvider.autoDispose
    .family<ViewModelChannel, String>(
        (ref, id) => ViewModelChannel(ref.read, id));

final kPrvSnackBarChannel = StateNotifierProvider.family
    .autoDispose<SnackBarMessageNotifier, String>(
        (ref, id) => SnackBarMessageNotifier());

final _kPrvDetailSnackMsg =
    Provider.family.autoDispose<SnackData, String>((ref, id) {
  final snackMsgEvent = ref.watch(kPrvSnackBarChannel(id).state);
  return SnackData(snackMsgEvent.snackMsg, Dimens.SNACK_BAR_DEFAULT_MARGIN);
});

const double _kChannelLogoSize = 32;

@hwidget
Widget screenChannel(
  BuildContext context, {
  @required String channelId,
}) =>
    SafeArea(
      child: Scaffold(
        body: SnackEventListener(
          provider: _kPrvDetailSnackMsg(channelId),
          child: useProvider(kPrvViewModelChannel(channelId).state).when(
            preInitialized: () => const CenterCircleProgress(),
            error: (errMsg) => PageError(
              text: errMsg.value,
            ),
            success: (dataWrapper) => _Content(
              channel: dataWrapper.data.channel,
            ),
          ),
        ),
      ),
    );

class _Content extends HookWidget {
  const _Content({
    @required this.channel,
    Key key,
  }) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(
      initialLength: 3,
      initialIndex: useProvider(kPrvViewModelChannel(channel.id)).tabIndex,
    );
    _initTabListener(context, tabController);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (context.isThinScreen)
          const SizedBox(height: 16)
        else
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: _RowHeaderImg(
              channelId: channel.id,
            ),
          ),
        _RowChannelName(
          channel: channel,
        ),
        const SizedBox(height: 16),
        if (!context.isThinScreen)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _RowBillingBtn(
              channel: channel,
            ),
          ),
        _RowTab(controller: tabController),
        const _RowSeem(),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              PageChannelDetail(
                text: channel.detail,
                id: channel.id,
              ),
              PageMovieList(
                onTapItem: (context, prgId) async =>
                    context.pushProgramPage(prgId),
                channelId: channel.id,
              ),
              PageNotification(
                announcements: channel.announcementAvailable,
                id: channel.id,
              ),
            ],
          ),
        )
      ],
    );
  }

  void _initTabListener(BuildContext context, TabController tabController) =>
      useEffect(() {
        void listener() =>
            context.read(kPrvViewModelChannel(channel.id)).tabIndex =
                tabController.index;
        tabController.addListener(listener);
        return () => tabController.removeListener(listener);
      }, [tabController]);
}

@swidget
Widget _rowHeaderImg({
  @required String channelId,
}) =>
    AspectRatio(
      aspectRatio: Dimens.HEADER_ASPECT,
      child: CustomCachedNetworkImage(
        imageUrl: UrlUtil.getChannelHeaderUrl(channelId),
        errorWidget: (context, url, e) {
          Util.onImageError(context, url: url, error: e);
          return const SizedBox.shrink();
        },
      ),
    );

@swidget
Widget _rowChannelName({@required Channel channel}) => ContentCell(
      child: Row(
        children: [
          CustomCachedNetworkImage(
            height: _kChannelLogoSize,
            width: _kChannelLogoSize,
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
            _AlertBtn(channelId: channel.id),
          ],
        ),
      );

  Future<void> _onTapSubscribeBtn(BuildContext context) async =>
      BtmSheetCommon.showUrlLauncherBtmSheet(
        context: context,
        url: UrlUtil.channelId2Url(channel.id),
        child: const Text(Strings.BTM_SHEET_MSG_CREDIT_CARD),
        snackCallback: (msg) =>
            context.read(kPrvViewModelChannel(channel.id)).notifySnackMsg(msg),
      );
}

@swidget
Widget _rowTab({
  @required TabController controller,
}) =>
    ContentCell(
      child: TabBar(
          labelColor: Colors.white,
          controller: controller,
          isScrollable: true,
          tabs: const [
            Tab(text: Strings.CHANNEL_TAB_DESC),
            Tab(text: Strings.CHANNEL_TAB_MOVIE),
            Tab(text: Strings.CHANNEL_TAB_NOTIFICATION),
          ]),
    );

@swidget
Widget _rowSeem() => const SizedBox(
      height: .5,
      child: ColoredBox(
        color: Styles.COLOR_TEXT_SUB,
      ),
    );

//todo styling
@hwidget
Widget _alertBtn(BuildContext context, {
  @required String channelId,
}) {
  final bool isFcmSubscribing =
      useProvider(kPrvHiveFcmChannelSubscribeUpdate(channelId)).maybeWhen(
    orElse: () => false,
    data: (it) => it,
  );
  return isFcmSubscribing ? IconButton(
    icon: Icon(
      Icons.notifications,
      color: Theme.of(context).primaryColor,
    ),
    onPressed: () async => context.read(kPrvViewModelChannel(channelId)).unSubscribeChannel(),
  ) : IconButton(
    icon: const Icon(
      Icons.add_alert,
      color: Styles.COLOR_TEXT_SUB,
    ),
    onPressed: () async => context.read(kPrvViewModelChannel(channelId)).subscribeChannel(),
  );
}
