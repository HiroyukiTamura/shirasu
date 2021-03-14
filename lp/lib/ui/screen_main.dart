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
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:lp/extensions.dart';

class ScreenMain extends StatefulWidget {
  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  late AutoScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AutoScrollController();
    WidgetsBinding.instance?.addPostFrameCallback((_) async => _afterLayout());
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => ListView(
            controller: _controller,
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
            ]
                .asMap()
                .map<int, Widget>((i, child) => MapEntry(
                    i,
                    AutoScrollTag(
                      key: ValueKey(i),
                      controller: _controller,
                      index: i,
                      highlightColor: Colors.black.withOpacity(0.1),
                      child: child,
                    )))
                .values
                .toList(),
          ));

  Future<void> _afterLayout() async {
    final path = Uri.base.pathSegments.last;
    if (path.startsWith('#') && path.substring(1) == SectionPolicy.ID)
      await _controller.scrollToIndex(5);
  }
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
          padding: EdgeInsets.symmetric(horizontal: context.isNarrowScreen ? 16 : 96),
          child: child,
        ),
      );
}
