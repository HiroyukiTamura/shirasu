import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/billng_btn.dart';
import 'package:shirasu/screen_dashboard/video_tag_chip.dart';

class ScreenDashboard extends StatelessWidget {
  static const _BILLING_PROMO_ONE_TIME = '880円でこの番組を購入';
  static const _BILLING_PROMO_CHANNEL = '月額6600円でこのチャンネルを購読';
  static const _IMG_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201027/thumbnail';
  static const _CHANNEL_IMG_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/icon';
  static const _CHANNEL_TITLE = 'ゲンロン完全中継チャンネル';
  static const _IMG_RATIO = 1920 / 1080;
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return AspectRatio(
                      aspectRatio: ScreenDashboard._IMG_RATIO,
                      child: CachedNetworkImage(imageUrl: _IMG_URL),
                    );
                  case 1:
                    return SizedBox(
                      height: 16,
                    );
                  case 2:
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              '放送中',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              '購入済',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  case 3:
                    return SizedBox(
                      height: 8,
                    );
                  case 4:
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        _VIDEO_TITLE,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: Styles.TEXT_HEIGHT,
                        ),
                      ),
                    );
                  case 5:
                    return SizedBox(
                      height: 4,
                    );
                  case 6:
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        _VIDEO_TIME,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                    );
                  case 7:
                    return SizedBox(
                      height: 16,
                    );
                  case 8:
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          VideoTagChip(text: 'ゲンロンカフェ（特別配信）'),
                          VideoTagChip(text: 'さやわか'),
                          VideoTagChip(text: '東浩紀'),
                          VideoTagChip(text: '桂大介'),
                          VideoTagChip(text: '情報唯物論的等価交換'),
                          VideoTagChip(text: 'シラス'),
                          VideoTagChip(text: 'ゲンロン'),
                        ],
                      ),
                    );
                  case 9:
                    return SizedBox(
                      height: 36,
                    );
                  case 10:
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 32,
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl: _CHANNEL_IMG_URL,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              _CHANNEL_TITLE,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    );
                  case 11:
                    return SizedBox(height: 36);
                  case 12:
                    return BillingBtn(text: _BILLING_PROMO_ONE_TIME);
                  case 13:
                    return SizedBox(height: 16);
                  case 14:
                    return BillingBtn(text: _BILLING_PROMO_CHANNEL);
                  case 15:
                    return SizedBox(height: 36);
                  case 16:
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        _VIDEO_DESC,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          height: Styles.TEXT_HEIGHT,
                        ),
                      ),
                    );
                  default:
                    return const SizedBox(height: 50);
                }
              }),
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
  }
}
