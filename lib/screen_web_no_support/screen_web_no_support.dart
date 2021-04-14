import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenWebNoSupport extends StatelessWidget {

  const ScreenWebNoSupport();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    Strings.SCREEN_WEB_NO_SUPPORT,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: TextHeight.TEXT_HEIGHT,
                    ),
                  ),
                  const SizedBox(height: 24),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,//todo refactor
                    child: GestureDetector(
                      onTap: () => _onTapGooglePlayBadge(context),
                      child: Assets.png.googlePlayBadge.image(width: 160),
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
