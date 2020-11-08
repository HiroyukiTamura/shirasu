import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';
import 'package:shirasu/screen_channel/page_channel_detail.dart';
import 'package:shirasu/screen_channel/page_notification.dart';
import 'package:shirasu/screen_detail/billing_btn.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';

final _channelProvider = ChangeNotifierProvider.autoDispose
    .family<ViewModelChannel, String>((ref, id) => ViewModelChannel(id));

class ScreenChannel extends StatefulWidget {
  const ScreenChannel({Key key, @required this.channelId}) : super(key: key);

  final String channelId;

  static const double _CHANNEL_LOGO_SIZE = 32;

  @override
  _ScreenChannelState createState() => _ScreenChannelState(channelId);
}

class _ScreenChannelState extends State<ScreenChannel>
    with TickerProviderStateMixin {
  _ScreenChannelState(this._channelId)
      : _headerUrl = ApiClient.getChannelHeaderUrl(_channelId),
        _logoUrl = ApiClient.getChannelLogoUrl(_channelId);

  final String _channelId;
  final String _headerUrl;
  final String _logoUrl;

  TabController _tabController;
  static const _BILLING_PROMO_CHANNEL = '月額6600円で購読';

  @override
  void initState() {
    super.initState();
    //todo set length dynamically
    _tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback(
        (_) async => context.read(_channelProvider(_channelId)).setUpData());
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Consumer(
          builder: (BuildContext context, ScopedReader watch, Widget child) {
        final viewModel = watch(_channelProvider(_channelId));
        final value = viewModel.value;
        if (value == null)
          return const Center(
            child: CircularProgressIndicator(),
          );
        if (value is ChannelDataResultError)
          return const SizedBox(); //error handle
        if (value is ChannelDataResultSuccess) {
          final isAnnouncementEmpty = value.channelData.channel.announcements.items.isEmpty;
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
                      height: ScreenChannel._CHANNEL_LOGO_SIZE,
                      width: ScreenChannel._CHANNEL_LOGO_SIZE,
                      imageUrl: _logoUrl,
                    ),
                    const SizedBox(width: 24),
                    Text(
                      value.channelData.channel.name,
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
                    if (value.channelData.channel.subscriptionPlan
                            ?.viewerPurchasedPlan?.isActive ==
                        true)
                      PurchasedBannerMedium()
                    else if (value
                        .channelData.channel.subscriptionPlan?.isPurchasable)
                      const BillingBtnMedium(text: _BILLING_PROMO_CHANNEL)
                    else
                      const SizedBox.shrink(),
                    IconButton(
                      icon: Icon(
                        Icons.add_alert,
                        color: Styles.colorTextSub,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ContentCell(
                child: TabBar(
                    labelColor: Colors.white,
                    controller: _tabController,
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
                  controller: _tabController,
                  children: [
                    PageChannelDetail(text: value.channelData.channel.detail),
                    Container(),
                    if (!isAnnouncementEmpty)
                      PageNotification(
                          announcements:
                              value.channelData.channel.announcements),
                  ],
                ),
              )
            ],
          );
        } else {
          throw Exception('unexpected value type :: ${value.runtimeType}');
        }
      })),
    );
  }
}
