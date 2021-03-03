import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lp/gen/fonts.gen.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/section_contact.dart';
import 'package:lp/ui/screen_main/section_dev_resource.dart';
import 'package:lp/ui/screen_main/section_feature.dart';
import 'package:lp/ui/screen_main/section_policy.dart';
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
              const Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionFeature(),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionDevResource(),
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
                    child: SectionPolicy(),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1248,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionContact(),
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
