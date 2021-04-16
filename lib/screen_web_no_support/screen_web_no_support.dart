import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/gen/fonts.gen.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/branding.dart';
import 'package:shirasu/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenWebNoSupport extends StatelessWidget {
  const ScreenWebNoSupport();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderLogo(),
                  const SizedBox(height: 64),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Androidアプリ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: TextHeight.TEXT_HEIGHT,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 48),
                      MouseRegion(
                        cursor: SystemMouseCursors.click, //todo refactor
                        child: GestureDetector(
                          onTap: () => _onTapGooglePlayBadge(context),
                          child: Assets.png.googlePlayBadge.image(width: 160),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.android,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'iOSアプリ',
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          height: TextHeight.TEXT_HEIGHT,
                          color: Colors.white,
                          fontFamily: FontFamily.notoSansJp,
                        ),
                        children: [
                          const TextSpan(
                            text: Strings.SCREEN_FCM_GUIDE_1,
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Assets.svg.iconIosShare.svg(
                                height: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const TextSpan(
                            text: Strings.SCREEN_FCM_GUIDE_2,
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
      );

  Future<void> _onTapGooglePlayBadge(BuildContext context) async =>
      Util.launchUrl(
          context,
          UrlUtil.URL_GOOGLE_PLAY,
          () => context
              .read(kPrvLogger)
              .e(ArgumentError.value(UrlUtil.URL_GOOGLE_PLAY), null));
}
