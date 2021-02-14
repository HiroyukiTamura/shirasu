import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/screen_main/page_setting/account/email_status_label.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_birthdate.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_job.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_location.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_seem.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_title.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_top.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/ui_common/page_error.dart';

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/graphql_common.dart';
import '../../mock_repository/hive_pref_empty.dart';
import '../../mock_viewmodel/viewmodel_setting_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_runner_on_page_list.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final runner = _TestRunner()
    ..runTestGroup('SettingPageUserInfo',
        goldenNamePrefix: 'SettingPageUserInfo');
  await runner.init();
  runner.runTestNormal();
}

class _TestRunner extends TestRunnerBase with TestRunnerOnPageError {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageUserInfo(),
          ),
          goldenNamePrefix: 'SettingPageUserInfo',
        );

  ViewerWrapper _mViewerWrapper;

  Future<void> init() async {
    _mViewerWrapper = await kJsonClient.viewerWrapper;
  }

  /// todo add test;
  /// 1. subscribing program
  /// 2. now broadcasting program
  void runTestNormal() => group('SettingPageUserInfo', () {
        void testGoldenTemplate({
          @required String goldenName,
          ViewerWrapper viewerWrapper,
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
                  viewerWrapper: _mViewerWrapper,
                )),
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
            tester.fling(
                find.descendant(
                    of: find.byKey(scenarioWidgetKey),
                    matching: find.byType(ListView)),
                const Offset(0, -500),
                2000);

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
      });
}
