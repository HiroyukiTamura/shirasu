import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';
import 'package:shirasu/screen_channel/page_channel_detail.dart';
import 'package:shirasu/screen_channel/page_movie_list.dart';
import 'package:shirasu/screen_detail/billing_btn.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';

class ScreenChannel extends StatefulWidget {
  static const double _HEADER_ASPECT = 6;
  static const _HEADER_IMG_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/header';
  static const _CHANNEL_TITLE = 'ゲンロン完全中継チャンネル';
  static const _CHANNEL_LOGO_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/icon';
  static const _CHANNEL_DETAIL =
      'ゲンロンは、批評家の東浩紀が中心となって、2010年4月に創業した企業です。出版、放送、スクール、イベント運営などの事業を手がけています。東京・五反田にあるゲンロンカフェでは、年におよそ100回のイベントを開催しています（2020年10月現在、感染症対策のため現地での観覧は一時停止し、イベントは放送のみでお届けしています）。\n\nこのチャンネルでは、ゲンロンカフェで開催されるゲンロン主催のイベントを、ほぼ月8-12回のペースで生中継しています。ほとんどの番組は単独で簡単にご購入いただけます。また、月額会員に登録すればすべての番組をご視聴いただくことができます。\n\nなお、一部の番組で有料延長放送をすることがあります。延長分については、月額会員の方でも追加の課金が必要となる場合があります。ご了承ください。\n\n生放送は、中継終了後にアーカイブ動画（録画）として半年間保存されます。会員および番組購入者は、中継終了後も当該番組の録画を視聴することができます。アーカイブには延長分も含まれますので、ご購入をいただいた延長分もあわせてご視聴いただけます。\n\nゲンロン友の会会員のみなさんは、視聴1回の無料から最大1年間無料まで、会員種別ごとに割引特典を受けることができます。詳しい特典内容は https://genron-alpha.com/tomonokai11/ に記載されています。\n\n日本最強のトークスペース、ゲンロンカフェの熱気を、ぜひシラスでご体験ください！';

  static const double _CHANNEL_LOGO_SIZE = 32;

  @override
  _ScreenChannelState createState() => _ScreenChannelState();
}

class _ScreenChannelState extends State<ScreenChannel>
    with TickerProviderStateMixin {
  TabController _tabController;
  static const _BILLING_PROMO_CHANNEL = '月額6600円で購読';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController = null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 14,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return AspectRatio(
                  aspectRatio: ScreenChannel._HEADER_ASPECT,
                  child: CachedNetworkImage(
                      imageUrl: ScreenChannel._HEADER_IMG_URL),
                );
              case 1:
                return SizedBox(height: 24);
              case 2:
                return ContentCell(
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        height: ScreenChannel._CHANNEL_LOGO_SIZE,
                        width: ScreenChannel._CHANNEL_LOGO_SIZE,
                        imageUrl: ScreenChannel._CHANNEL_LOGO_URL,
                      ),
                      SizedBox(width: 24),
                      Text(
                        ScreenChannel._CHANNEL_TITLE,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              case 3:
                return SizedBox(height: 28);
              case 4:
                return ContentCell(
                  child: Row(
                    children: [
                      BillingBtnMedium(
                        text: _BILLING_PROMO_CHANNEL,
                      ),
                      Expanded(
                        child: const SizedBox(),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_alert, color: Styles.colorTextSub,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              case 5:
                return SizedBox(height: 16);
              case 6:
                return ContentCell(
                  child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      tabs: [
                        Tab(text: '概要'),
                        Tab(text: '動画'),
                        Tab(text: 'お知らせ')
                      ]),
                );
              case 7:
                return SizedBox(
                  height: .5,
                  child: ColoredBox(
                    color: Colors.white.withOpacity(.7),
                  ),
                );
              case 8:
                return PageMovieList();
              default:
                return const SizedBox();
            }
          }),
    );
  }
}
