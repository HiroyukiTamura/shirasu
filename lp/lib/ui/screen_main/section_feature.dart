import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:dartx/dartx.dart';
import 'package:lp/ui/screen_main/responsive_builder.dart';
import 'card_gray.dart';

class SectionFeature extends StatelessWidget {
  const SectionFeature();

  @override
  Widget build(BuildContext context) => CardGray(
        child: Padding(
          padding: const EdgeInsets.all(96),
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
                heading: Strings.HEADING_OSS,
                description: Strings.DESC_FEATURE_OSS,
                illustration: Assets.svg.undrawSecurity.svg(),
              ),
              const SizedBox(height: 96),
              _FeatureItem(
                reverse: true,
                heading: Strings.HEADING_NO_AD,
                description: Strings.DESC_FEATURE_NO_AD,
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
        Text(
          heading,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          style: TextStyle(
            color: Color(0xff9C9FAB),
            height: 1.7,
          ),
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
