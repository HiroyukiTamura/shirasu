import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/ui/screen_main/section_contact.dart';
import 'package:lp/ui/screen_main/section_dev_resource.dart';
import 'package:lp/ui/screen_main/section_feature.dart';
import 'package:lp/ui/screen_main/section_footer.dart';
import 'package:lp/ui/screen_main/section_header.dart';
import 'package:lp/ui/screen_main/section_header_label.dart';
import 'package:lp/ui/screen_main/section_policy.dart';
import 'package:lp/ui/screen_main/section_tech_stack.dart';

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => ListView(
          children: [
            const SectionHeaderLabel(),
            _SectionWrapper(
              child: SectionHeader(
                screenHeight: constraints.maxHeight,
              ),
            ),
            const _SectionWrapper(
              child: SectionFeature(),
            ),
            const _SectionWrapper(
              child: SectionDevResource(),
            ),
            const _SectionWrapper(
              child: SectionTechStack(),
            ),
            const _SectionWrapper(
              child: SectionPolicy(),
            ),
            const _SectionWrapper(
              child: SectionContact(),
            ),
            const _SectionWrapper(
              child: SectionFooter(),
            ),
          ],
        ),
      );
}

class _SectionWrapper extends StatelessWidget {
  const _SectionWrapper({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => Center(
    child: Container(
          width: 1024,
          padding: const EdgeInsets.symmetric(horizontal: 96),
          child: child,
        ),
  );
}
