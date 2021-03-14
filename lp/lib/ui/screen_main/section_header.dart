import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/ui/screen_main/responsive_builder.dart';
import 'package:lp/ui/screen_main/section_header_label.dart';
import 'package:lp/ui/screen_main/card_gray.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/util.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.screenHeight});

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    final descFrag = [
      const Text(
        Strings.APP_NAME,
        style: Styles.APP_TITLE,
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
      const _RowStoreBadge(),
      const SizedBox(height: 20),
      Text(
        Strings.DESC_HEADING,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      const SizedBox(height: 32),
      CardGray(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: Row(
            children: [
              const Icon(
                Icons.info,
                color: CustomColor.TEXT_SUB,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Text(
                  Strings.NOTE_HEADING,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    final illustrationFrag = SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.only(left: 48),
        child: Assets.png.sample.image(
          fit: BoxFit.contain,
        ),
      ),
    );
    const padding = EdgeInsets.only(bottom: SectionHeaderLabel.HEIGHT);
    return ResponsiveBuilder(
      smallScreen: (context) => Padding(
        padding: padding,
        child: Column(
          children: [
            ...descFrag,
            const SizedBox(height: 24),
            illustrationFrag,
          ],
        ),
      ),
      wideScreen: (context) => Container(
        height: screenHeight - SectionHeaderLabel.HEIGHT,
        padding: padding,
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: descFrag,
                ),
              ),
            ),
            Expanded(child: illustrationFrag),
          ],
        ),
      ),
    );
  }
}

class _RowStoreBadge extends StatelessWidget {
  const _RowStoreBadge();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Wrap(
          spacing: 24,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            _StoreBadge(
              url: Urls.unagiGooglePlay,
              child: Assets.svg.badgeGooglePlay.svg(),
            ),
            //todo implement url
            _StoreBadge(
              url: '',
              child: Assets.svg.badgeAppStore.svg(),
            ),
          ],
        ),
      );
}

class _StoreBadge extends StatelessWidget {
  const _StoreBadge({
    required this.url,
    required this.child,
  });

  final String url;
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 150,
        ),
        alignment: Alignment.center,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => launchUrl(url),
            child: child,
          ),
        ),
      );
}
