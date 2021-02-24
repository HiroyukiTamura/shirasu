import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_pre_login/screen_pre_login.dart';

import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';


void main() {

  final runner = TestRunnerBase(() => const ScreenPreLogin());
  group('ScreenPreLogin', () {
    runner.testGoldensSimple(testName: TestNameCommon.NORMAL);
  });
}
