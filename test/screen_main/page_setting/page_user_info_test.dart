import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/ui_common/page_error.dart';

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/graphql_common.dart';
import '../../mock_repository/hive_auth_empty.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final runner = _TestRunner()
    ..runTestGroup('SettingPageUserInfo',
        goldenNamePrefix: 'SettingPageUserInfo');
  await runner.init();
  runner.runTestNormal();
}

/// todo dialog test
class _TestRunner extends TestRunnerBase with TestRunnerOnPageError {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageUserInfo(),
          ),
          goldenNamePrefix: 'SettingPageUserInfo',
        );

  /// todo add test;
  /// 1. subscribing program
  /// 2. now broadcasting program
  void runTestNormal() => group('SettingPageUserInfo', () {
        void testGoldenTemplate({
          @required String goldenName,
          OnScenarioCreateTest onScenarioCreatePost,
          List<Finder> expectOneWidgetList = const [],
          List<Finder> expectNoWidgetList = const [],
        }) {
          testGoldensSimple(
              testName: goldenName,
              overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kPrvGraphqlRepository
                    .overrideWithValue(GraphQlRepositoryCommonImpl(
                  viewerWrapper: viewerWrapper,
                )),
                kPrvHiveAuthRepository
                    .overrideWithValue(HiveAuthRepositoryCommon(
                  specAuthData: authData,
                )),
                kPrvHiveAuthUser
                    .overrideWithValue(authData.body.decodedToken.user),
                ...defaultOverride,
              ],
              onScenarioCreate: (tester, scenarioWidgetKey) async {
                await tester.pump(5.seconds);
                (expectNoWidgetList + [find.byType(PageError)])
                    .forEach((it) => TestUtil.expectFind(
                          scenarioWidgetKey: scenarioWidgetKey,
                          matching: it,
                          matcher: findsNothing,
                        ));
                expectOneWidgetList.forEach((it) => TestUtil.expectFind(
                      scenarioWidgetKey: scenarioWidgetKey,
                      matching: it,
                      matcher: findsOneWidget,
                    ));
                if (onScenarioCreatePost != null)
                  await onScenarioCreatePost(tester, scenarioWidgetKey);
              });
        }

        Future<void> _scrollDown(
                WidgetTester tester, Key scenarioWidgetKey) async =>
            tester.drag(
                find.descendant(
                    of: find.byKey(scenarioWidgetKey),
                    matching: find.byType(ListView)),
                const Offset(0, -700));

        /// [WidgetTester.ensureVisible] is not work...
        Future<void> _scrollDownMultiple(
            WidgetTester tester, Key scenarioWidgetKey, int count) async {
          for (int i = 0; i < count; i++) {
            print('scroll down! i: $i');
            await _scrollDown(tester, scenarioWidgetKey);
          }
        }

        /// capture whole screen
        testGoldenTemplate(
          goldenName: 'Normal0',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 0),
        );
        testGoldenTemplate(
          goldenName: 'Normal1',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 1),
        );
        testGoldenTemplate(
          goldenName: 'Normal2',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 2),
        );
        testGoldenTemplate(
          goldenName: 'Normal3',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 3),
        );
        testGoldenTemplate(
          goldenName: 'Normal4',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 4),
        );
        testGoldenTemplate(
          goldenName: 'Normal5',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 5),
        );
        testGoldenTemplate(
          goldenName: 'Normal5',
          onScenarioCreatePost: (tester, scenarioWidgetKey) async =>
              _scrollDownMultiple(tester, scenarioWidgetKey, 5),
        );
      });
}
