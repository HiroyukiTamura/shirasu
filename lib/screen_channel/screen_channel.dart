import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
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

  static const double _HEADER_ASPECT = 6;
  static const _CHANNEL_DETAIL =
      'ゲンロンは、批評家の東浩紀が中心となって、2010年4月に創業した企業です。出版、放送、スクール、イベント運営などの事業を手がけています。東京・五反田にあるゲンロンカフェでは、年におよそ100回のイベントを開催しています（2020年10月現在、感染症対策のため現地での観覧は一時停止し、イベントは放送のみでお届けしています）。\n\nこのチャンネルでは、ゲンロンカフェで開催されるゲンロン主催のイベントを、ほぼ月8-12回のペースで生中継しています。ほとんどの番組は単独で簡単にご購入いただけます。また、月額会員に登録すればすべての番組をご視聴いただくことができます。\n\nなお、一部の番組で有料延長放送をすることがあります。延長分については、月額会員の方でも追加の課金が必要となる場合があります。ご了承ください。\n\n生放送は、中継終了後にアーカイブ動画（録画）として半年間保存されます。会員および番組購入者は、中継終了後も当該番組の録画を視聴することができます。アーカイブには延長分も含まれますので、ご購入をいただいた延長分もあわせてご視聴いただけます。\n\nゲンロン友の会会員のみなさんは、視聴1回の無料から最大1年間無料まで、会員種別ごとに割引特典を受けることができます。詳しい特典内容は https://genron-alpha.com/tomonokai11/ に記載されています。\n\n日本最強のトークスペース、ゲンロンカフェの熱気を、ぜひシラスでご体験ください！';

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
        if (value is ChannelDataResultSuccess)
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: ScreenChannel._HEADER_ASPECT,
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ContentCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BillingBtnMedium(
                      text: _BILLING_PROMO_CHANNEL,
                    ),
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
                    tabs: const [
                      Tab(text: Strings.CHANNEL_TAB_DESC),
                      Tab(text: Strings.CHANNEL_TAB_MOVIE),
                      Tab(text: Strings.CHANNEL_TAB_NOTIFICATION),
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
                    if (value.channelData.channel.announcements.items.isNotEmpty)
                      PageNotification(announcements: value.channelData.channel.announcements),
                  ],
                ),
              )
            ],
          );
        else
          throw Exception('unexpected value type :: ${value.runtimeType}');
      })),
    );
  }
}
