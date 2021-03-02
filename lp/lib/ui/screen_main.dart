import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/gen/fonts.gen.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/resources/strings.dart';

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
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: Container(
                      color: Color(0xff1A1D2B),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 96,
                                vertical: 56,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.code,
                                    color: Theme.of(context).accentColor,
                                    size: 48,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'セキュアで透明なアプリ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: FontFamily.shingo,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'セキュアで透明なコード\nふにふｆにふぁふぁｓｆｄｓ\nほがほｇほあほが',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              color: Color(0xff1A1D2B),
                              child: Column(
                                children: [
                                  Text(
                                    'セキュアで透明なアプリ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: FontFamily.shingo,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'セキュアで透明なコード\nふにふｆにふぁふぁｓｆｄｓ\nほがほｇほあほが',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
                    height: 24,
                  ),
                  Text(
                    'バックグラウンド再生可能\n非公式リリース最高のサービスバックグラウンド再生可能\n非公式リリース最高のサービスバックグラウンド再生可能\n非公式リリース最高のサービス',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 8,
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
