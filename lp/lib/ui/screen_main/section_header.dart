import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/gen/fonts.gen.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'file:///D:/AndroidStudioProject/shirasu2/lp/lib/ui/screen_main/card_gray.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(child: SizedBox.shrink()),
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
                  const SizedBox(height: 8),
                  Wrap(
                    runSpacing: 24,
                    spacing: 24,
                    children: [
                      const SizedBox.shrink(),
                      Assets.svg.badgeGooglePlay.svg(),
                      Assets.svg.badgeAppStore.svg(),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    Strings.DESC_HEADING,
                    style: TextStyle(
                      height: 1.7,
                      color: CustomColor.TEXT_SUB,
                    ),
                  ),
                  const SizedBox(height: 32),
                  CardGray(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.info,
                            color: CustomColor.TEXT_SUB,
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: Text(
                              Strings.NOTE_HEADING,
                              style: TextStyle(
                                height: 1.7,
                                color: CustomColor.TEXT_SUB,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox.shrink()),
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
