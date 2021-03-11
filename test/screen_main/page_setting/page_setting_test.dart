import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';

import '../../mock_viewmodel/viewmodel_setting_mockable.dart';
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

  void runTest() => group('PageSettingInMainScreen', () {
        final overrides = [kOverrideViewModelSettingMocked];
        testGoldensSimple(
          testName: 'UserInfo',
          overrides: overrides,
        );
        testGoldensSimple(
            testName: 'AppConfig',
            overrides: overrides,
            onPostBuild: (tester) async {
              final tabBtn = find.widgetWithText(Tab, Strings.TAB_APP_CONFIG);
              await tester.tap(tabBtn);
              await tester.pumpAndSettle();
            });
      });
}
