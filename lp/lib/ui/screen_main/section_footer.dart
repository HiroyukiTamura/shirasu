import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/util.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'section_footer.g.dart';

@swidget
Widget sectionFooter(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 48),
      child: Center(
        child: RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText2, children: [
            const TextSpan(text: 'Except as otherwise '),
            const TextSpan(text: 'noted, '),
            const TextSpan(text: 'this work is licensed under a '),
            linkText(
              context,
              text: 'Apache License 2.0',
              url: Urls.LICENSE_APACHE,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: CustomColor.LINK,
                  ),
            ),
          ]),
        ),
      ),
    );
