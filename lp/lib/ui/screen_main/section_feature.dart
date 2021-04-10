import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:dartx/dartx.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/responsive_builder.dart';
import 'package:lp/ui/screen_main/card_gray.dart';
import 'package:lp/extensions.dart';

class SectionFeature extends StatelessWidget {
  const SectionFeature();

  @override
  Widget build(BuildContext context) => CardGray(
        child: Padding(
          padding: EdgeInsets.all(context.isNarrowScreen ? 16 : 96),
          child: Column(
            children: [
              _FeatureItem(
                reverse: true,
                heading: Strings.HEADING_BACKGROUND,
                description: Strings.DESC_FEATURE_BACKGROUND,
                illustration: Assets.svg.undrawAudio.svg(),
              ),
              const SizedBox(height: 96),
              _FeatureItem(
                reverse: false,
                heading: Strings.HEADING_SEARCH_NTF,
                description: Strings.DESC_FEATURE_SEARCH_NTF,
                illustration: Assets.svg.undrawSearch.svg(),
              ),
              const SizedBox(height: 96),
              _FeatureItem(
                reverse: true,
                heading: Strings.HEADING_OSS_NO_AD,
                description: Strings.DESC_FEATURE_OSS_NO_AD,
                illustration: Assets.svg.undrawOnlinePayments.svg(),
              ),
            ],
          ),
        ),
      );
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({
    required this.reverse,
    required this.heading,
    required this.description,
    required this.illustration,
    this.trailing,
  });

  final String heading;
  final String description;
  final Widget illustration;
  final Widget? trailing;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    final textFrag = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(heading: heading),
        const SizedBox(height: 16),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: trailing,
        )
      ].filterNotNull().toList().cast<Widget>(),
    );
    final illustrationFrag = SizedBox(
      height: 160,
      child: illustration,
    );
    return ResponsiveBuilder(
      smallScreen: (context) => Column(
        children: [
          textFrag,
          const SizedBox(height: 24),
          illustrationFrag,
        ],
      ),
      wideScreen: (context) {
        final textExpanded = Expanded(child: textFrag);
        final illustrationExpanded = Expanded(child: illustrationFrag);
        final children = reverse
            ? [textExpanded, illustrationExpanded]
            : [illustrationExpanded, textExpanded];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        );
      },
    );
  }
}
