import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/resources/urls.dart';
import 'package:lp/ui/screen_main/heading.dart';
import 'package:lp/ui/screen_main/util.dart';

class SectionPolicy extends StatelessWidget {
  const SectionPolicy();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 96,
          ),
          const Heading(heading: Strings.HEADING_POLICY),
          const SizedBox(height: 48),
          ..._policyText(
            context,
            children: [
              const TextSpan(text: '本アプリは、Googleが提供する解析サービスである'),
              _linkText(
                context,
                text: 'Google Analytics',
                url: Urls.FIREBASE_ANALYTICS,
              ),
              const TextSpan(
                  text:
                      'を用いて、 本アプリの利用履歴 を取得する機能を有しています。なお、数値情報は分析統計処理が施され、個人が特定できないように加工されています。'),
            ],
            url: Urls.POLICY_ANALYTICS,
            btnLabel: Strings.POLICY_ANALYTICS_LINK_BTN_VALUE,
          ),
          const SizedBox(height: 16),
          ..._policyText(
            context,
            children: [
              const TextSpan(text: '本アプリは、Googleが提供する解析サービスである'),
              _linkText(
                context,
                text: 'Firebase Crashlytics',
                url: Urls.FIREBASE_CRASHLYTICS,
              ),
              const TextSpan(
                  text:
                      'を用いて、本アプリのクラッシュレポートを取得する機能を有しています。なお、数値情報は分析統計処理が施され、個人が特定できないように加工されています。Googleは、Googleの責任の下、Googleの利用規約及びプライバシーポリシーに基づき、数値情報を管理します。'),
            ],
            url: Urls.POLICY_CRASHLYTICS,
            btnLabel: Strings.POLICY_CRASHLYTICS_LINK_BTN_VALUE,
          ),
        ],
      );

  static WidgetSpan _linkText(
    BuildContext context, {
    required String text,
    required String url,
  }) =>
      WidgetSpan(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () async => launchUrl(url),
            child: Text(
              text,
              style: Styles.BODY_TEXT_LINK,
            ),
          ),
        ),
      );

  static List<Widget> _policyText(
    BuildContext context, {
    required List<InlineSpan> children,
    required String url,
    required String btnLabel,
  }) =>
      [
        RichText(
          text: TextSpan(
            children: children,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () async => launchUrl(url),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(btnLabel),
          ),
        ),
      ];
}
