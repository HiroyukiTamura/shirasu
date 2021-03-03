import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/gen/fonts.gen.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/tech_stack.dart';

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => ListView(
            children: [
              Center(
                child: SizedBox(
                  width: 1248,
                  height: constraints.maxHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Header(),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 1248,
                  height: 800,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Color(0xff1A1D2B),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 96,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 96,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Icon(
                                      //   Icons.headset,
                                      //   color: Theme.of(context).accentColor,
                                      //   size: 40,
                                      // ),
                                      // SizedBox(height: 32),
                                      Text(
                                        'バックグラウンド再生',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        '長時間番組もバックグラウンド再生可能\n接続されたBluetooth機器等から自由に停止・再生出来ます\nその他、公式サービスが提供するほぼすべての機能を提供します',
                                        style: TextStyle(
                                          color: Color(0xff9C9FAB),
                                          fontSize: 14,
                                          height: 1.7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SvgPicture.asset(
                                    'assets/svg/undraw_audio.svg',
                                    height: 160,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 96,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 96,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SvgPicture.asset(
                                    'assets/svg/undraw_security.svg',
                                    height: 160,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Icon(
                                      //   Icons.headset,
                                      //   color: Theme.of(context).accentColor,
                                      //   size: 40,
                                      // ),
                                      // SizedBox(height: 32),
                                      Text(
                                        'セキュアなOSSアプリ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        '本アプリ・Webページのコード全文を公開しており、開発には誰でも参加することができます\nもちろんこのWebページも編集可能です',
                                        style: TextStyle(
                                          color: Color(0xff9C9FAB),
                                          fontSize: 14,
                                          height: 1.7,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Row(
                                        children: [
                                          IconButton(
                                              icon: const Icon(
                                                FontAwesomeIcons.github,
                                                color: Color(0xff9C9FAB),
                                              ),
                                              onPressed: () {}),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          IconButton(
                                              icon: const Icon(
                                                FontAwesomeIcons.figma,
                                                color: Color(0xff9C9FAB),
                                              ),
                                              onPressed: () {}),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          IconButton(
                                              icon: const Icon(
                                                FontAwesomeIcons.jira,
                                                color: Color(0xff9C9FAB),
                                              ),
                                              onPressed: () {}),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 96,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 96,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Icon(
                                      //   Icons.headset,
                                      //   color: Theme.of(context).accentColor,
                                      //   size: 40,
                                      // ),
                                      // SizedBox(height: 32),
                                      Text(
                                        '無広告・課金機能なし',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        'アプリ本体には広告・課金が必要な機能は一切ありません\nまた、アプリ運営者は認証や決済かかわる個人情報を保持しません。',
                                        style: TextStyle(
                                          color: Color(0xff9C9FAB),
                                          fontSize: 14,
                                          height: 1.7,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('プライバシーポリシー'),
                                          )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SvgPicture.asset(
                                    'assets/svg/undraw_online_payments.svg',
                                    height: 160,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 96,
                        ),
                        Text(
                          '開発リソース',
                          style: TextStyle(
                            height: 1.7,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 40),
                        Wrap(
                          children: [
                            TextButton.icon(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                              onPressed: () {},
                              label: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 24, 24, 24),
                                child: Text(
                                  'GitHub',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextButton.icon(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Icon(
                                  FontAwesomeIcons.figma,
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                              onPressed: () {},
                              label: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 24, 24, 24),
                                child: Text(
                                  'Figma',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextButton.icon(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Icon(
                                  FontAwesomeIcons.jira,
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                              onPressed: () {},
                              label: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 24, 24, 24),
                                child: Text(
                                  'JIRA',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: TechStack(),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 96,
                        ),
                        Text(
                          'プライバシーポリシー',
                          style: TextStyle(
                            height: 1.7,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 48),
                        Text(
                          '''
本アプリでは、バグ情報の収集・利用状況解析のためにGoogle Firebase Analyticsを使用する場合があります。

取得する情報、利用目的、第三者への提供等の詳細につきましては、以下のプライバシーポリシーのリンクよりご確認ください。
                        ''',
                          style: TextStyle(
                            height: 1.7,
                            fontSize: 14,
                            color: Color(0xffcdcfd5),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Firebase Analytics',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 96,
                        ),
                        Text(
                          'お問い合わせ',
                          style: TextStyle(
                            height: 1.7,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 48),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              Icons.mail,
                              color: Color(0xffcdcfd5),
                            ),
                          ),
                          label: Padding(
                            padding: const EdgeInsets.only(
                              right: 16,
                              top: 16,
                              bottom: 16,
                            ),
                            child: Text(
                              'hiroyuktamura@gmail.com',
                              style: TextStyle(
                                height: 1,
                                fontSize: 14,
                                color: Color(0xffcdcfd5),
                              ),
                            ),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              FontAwesomeIcons.twitter,
                              color: Color(0xffcdcfd5),
                            ),
                          ),
                          label: Padding(
                            padding: const EdgeInsets.only(
                              right: 16,
                              top: 16,
                              bottom: 16,
                            ),
                            child: Text(
                              '@freqmodu874',
                              style: TextStyle(
                                height: 1,
                                fontSize: 14,
                                color: Color(0xffcdcfd5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ));
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: SizedBox.shrink()),
                  const Text(
                    Strings.APP_NAME,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: FontFamily.shingo,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 2,
                      width: 96,
                      child: ColoredBox(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Assets.svg.badgeGooglePlay.svg(),
                        SizedBox(
                          width: 24,
                        ),
                        Assets.svg.badgeAppStore.svg(),
                        // SizedBox(
                        //   width: 24,
                        // ),
                        // SvgPicture.asset('assets/png/badge_amazon_store.png')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'このアプリは、動画配信プラットフォーム「シラス」の非公式アプリです。\n長時間番組もバックグラウンド再生可能\n公式サービスが提供するほぼすべての機能を提供します',
                    style: TextStyle(
                      height: 1.7,
                      fontSize: 14,
                      color: Color(0xff9C9FAB),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Color(0xff1A1D2B),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Color(0xff9C9FAB),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Text(
                              'このアプリは「シラス」とは無関係の個人が開発しており、公式の対応によっては予告なく運用を停止する場合があります。',
                              style: TextStyle(
                                height: 1.7,
                                fontSize: 14,
                                color: Color(0xff9C9FAB),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: false,
                    child: Row(
                      children: [
                        Assets.svg.badgeGooglePlay.svg(),
                        SizedBox(
                          width: 24,
                        ),
                        Assets.svg.badgeAppStore.svg(),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox.shrink()),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 600,
                child: Image.asset(
                  'assets/png/sample.png',
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ],
        ),
      );
}
