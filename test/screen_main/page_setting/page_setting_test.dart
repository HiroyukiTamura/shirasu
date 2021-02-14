import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_list/page_subscribing.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';

import '../../mock_viewmodel/viewmodel_setting_mockable.dart';
import '../../mock_viewmodel/viewmodel_subscribing_mockable.dart';
import '../../mock_viewmodel/viewmodel_watch_hisotry_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

/// test for [PageSettingInMainScreen]
class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageSettingInMainScreen(),
          ),
          goldenNamePrefix: 'PageSettingInMainScreen',
        );

  static const _TEST_NAME_PAGE_USER_INFO = 'UserInfo';
  static const _TEST_NAME_APP_CONFIG = 'AppConfig';

  void runTest() => group('PageSettingInMainScreen', () {
        List<Override> overrides = [kOverrideViewModelSettingMocked];
        testGoldensSimple(
          testName: _TEST_NAME_PAGE_USER_INFO,
          overrides: overrides,
        );
        testGoldensSimple(
            testName: _TEST_NAME_APP_CONFIG,
            overrides: overrides,
            onScenarioCreate: (tester, key) async {
              final tabBtn = find.descendant(
                of: find.byKey(key),
                matching: find.text(Strings.TAB_APP_CONFIG),
              );
              await tester.tap(tabBtn);
              await tester.pump(1.seconds);
            });
      });
}
