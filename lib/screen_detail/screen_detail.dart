import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/screen_dashboard/screen_dashboard.dart';
import 'package:shirasu/screen_detail/billing_btn.dart';
import 'package:shirasu/screen_detail/content_cell.dart';
import 'package:shirasu/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/row_video_title.dart';

class ScreenDetail extends StatelessWidget {
  static const _TAG_LIST = [
    'ゲンロンカフェ（特別配信）',
    'さやわか',
    '東浩紀',
    '桂大介',
    '情報唯物論的等価交換',
    'シラス',
    'ゲンロン'
  ];
  static const _BILLING_PROMO_ONE_TIME = '880円でこの番組を購入';
  static const BILLING_PROMO_CHANNEL = '月額6600円でこのチャンネルを購読';
  static const _BILLING_PROMO_ONE_TIME_M = '880円で\n番組を購入';
  static const BILLING_PROMO_CHANNEL_M = '月額6600円で\nチャンネルを購読';
  static const _IMG_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201027/thumbnail';
  static const _CHANNEL_IMG_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/icon';
  static const _CHANNEL_TITLE = 'ゲンロン完全中継チャンネル';
  static const IMG_RATIO = 1920 / 1080;
  static const _VIDEO_TITLE =
      '青山周平×市川紘司×上田洋子「中国における都市・建築・暮らし」【コロナ禍の世界から #4】 @ichikawakoji @yuvmsk #ゲンロン201030';
  static const _VIDEO_TIME = '2020/10/30 19:00 開始 22:00 終了予定';
  static const _VIDEO_DESC = '''
ゲンロンαにイベントの無料レポート記事を掲載しています。ぜひお読みください。
https://genron-alpha.com/article20201027_02/
☆ 当番組は冒頭部分の無料視聴に対応しておりません。ご了承ください。
☆ 当番組の単独購入・ご視聴は、2021年4月19日まで可能です。

※ 生放送された番組は、放送終了後から半年間、アーカイブ動画（録画）として番組を公開しています。放送終了後も、番組の単独購入は可能です。

■

ゲンロン主導で開発した新配信プラットフォーム「シラス」、ついにオープン！　10月19日にはオープンと同時にゲンロン完全中継チャンネル・シラス版が開設。今後も少しずつチャンネルを増やす計画になっている。

ゲンロンカフェではこのオープンを記念して、11月にチャンネル開設予定のさやわか、辻田真佐憲両氏を招いて記念イベントを開催。東浩紀によるシラスのプレゼン＆開発秘話から始まり、さやわか、辻田両氏の新チャンネルにかける意気込み、そしてシラスの未来を語り尽くす。イベント後半では、シラスCTOの桂大介氏もゲスト出演。シラスを支えるさまざまな工夫、見えてきた問題点も話していただく予定だ。

シラスのコンセプトは「無料でだらだら話さない」。視聴者には転送量の対価をきちんと負担いただくという「情報唯物論的等価交換」がシラスのポリシーだが、はたしてこの3人のメンバーでだらだら話さないことなんてできるのか？　そういう意味でも必見のイベント。
シラス爆誕の瞬間を見逃すな！

本イベントの前半（19:00-21:00）は「ゲンロン完全中継チャンネル：ニコ生版」で無料放送、後半は「ゲンロン完全中継チャンネル：シラス版」（21:00-）で550円の特別番組として有料放送になります。
後者については、「ゲンロン完全中継チャンネル：シラス版」にご入会いただければ（月額6600円）、むろん料金はかかりません。

※前半のニコ生パートを、YouTubeでも無料公開しました。以下のURLよりご視聴いただけます。
https://youtu.be/n3rm4aaH0m8
''';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            child: ScreenDashboard(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.6),
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_rounded),
              label: 'フォロー',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
        ),
      );

  static Widget contentWidget() => ListView.builder(
      itemCount: 17,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return AspectRatio(
              aspectRatio: ScreenDetail.IMG_RATIO,
              child: CachedNetworkImage(imageUrl: _IMG_URL),
            );
          case 1:
            return SizedBox(height: 16);
          case 2:
            return RowChannel(
              title: _CHANNEL_TITLE,
              imageUrl: _CHANNEL_IMG_URL,
            );
          case 3:
            return SizedBox(height: 12);
          // case 2:
          //   return Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 8),
          //     child: Row(
          //       children: [
          //         Container(
          //           padding: EdgeInsets.symmetric(
          //               horizontal: 8, vertical: 2),
          //           decoration: BoxDecoration(
          //               color: Theme.of(context).primaryColor,
          //               borderRadius: BorderRadius.circular(20)),
          //           child: Text(
          //             '放送中',
          //             style: TextStyle(
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 8,
          //         ),
          //         Container(
          //           padding: EdgeInsets.symmetric(
          //               horizontal: 8, vertical: 2),
          //           decoration: BoxDecoration(
          //               color: Theme.of(context).primaryColor,
          //               borderRadius: BorderRadius.circular(20)),
          //           child: Text(
          //             '購入済',
          //             style: TextStyle(
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   );
          // case 3:
          //   return SizedBox(
          //     height: 8,
          //   );
          case 4:
            return RowVideoTitle(text: _VIDEO_TITLE);
          case 5:
            return SizedBox(height: 4);
          case 6:
            return RowVideoTime(text: _VIDEO_TIME);
          case 7:
            return SizedBox(height: 16);
          case 8:
            return RowVideoTags(textList: _TAG_LIST);
          case 9:
            return SizedBox(height: 36);
          case 10:
            return BillingBtn(text: _BILLING_PROMO_ONE_TIME);
          case 11:
            return SizedBox(height: 16);
          case 12:
            return BillingBtn(text: BILLING_PROMO_CHANNEL);
          case 13:
            return SizedBox(height: 36);
          case 14:
            return RowFabs();
          case 15:
            return SizedBox(height: 36);
          case 16:
            return RowVideoDesc(text: _VIDEO_DESC);
          default:
            return SizedBox();
            // throw Exception('unexpected index $index');
        }
      });

  static Widget contentWidgetBilledOneTime() => ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return AspectRatio(
              aspectRatio: ScreenDetail.IMG_RATIO,
              child: CachedNetworkImage(imageUrl: _IMG_URL),
            );
          case 1:
            return SizedBox(height: 16);
          case 2:
            return RowChannel(
              title: _CHANNEL_TITLE,
              imageUrl: _CHANNEL_IMG_URL,
            );
          case 3:
            return SizedBox(height: 12);
          case 4:
            return RowVideoTitle(text: _VIDEO_TITLE);
          case 5:
            return SizedBox(height: 4);
          case 6:
            return RowVideoTime(text: _VIDEO_TIME);
          case 7:
            return SizedBox(height: 16);
          case 8:
            return RowVideoTags(textList: _TAG_LIST);
          case 9:
            return SizedBox(height: 36);
          case 10:
            return ContentCell(
              child: Row(
                children: [
                  BillingBtnThin(text: _BILLING_PROMO_ONE_TIME_M),
                  SizedBox(width: 16),
                  BillingBtnThin(text: BILLING_PROMO_CHANNEL_M),
                ],
              ),
            );
          case 11:
            return SizedBox(height: 36);
          case 12:
            return RowFabs();
          case 13:
            return SizedBox(height: 36);
          case 14:
            return RowVideoDesc(text: _VIDEO_DESC);
          default:
            return SizedBox();
        }
      });
}
