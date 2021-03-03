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
import 'package:lp/ui/screen_main/section_header.dart';
import 'package:lp/ui/screen_main/section_policy.dart';
import 'package:lp/ui/screen_main/section_tech_stack.dart';

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
      builder: (context, constraints) => ListView(
            children: [
              Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: SectionHeader(screenHeight: constraints.maxHeight,),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionFeature(),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionDevResource(),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionTechStack(),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96),
                    child: SectionPolicy(),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 1024,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: SectionContact(),
                  ),
                ),
              ),
            ],
          ));
}
