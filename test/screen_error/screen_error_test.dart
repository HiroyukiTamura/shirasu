import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_error/screen_error.dart';

import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';

void main() => group('ScreenError', () {
      final runnerExpired = TestRunnerBase(() => const ScreenError(
            showLoginBtn: true,
            errText: Strings.ERR_UN_AUTH,
          ));
      final runner = TestRunnerBase(() => const ScreenError(
            showLoginBtn: false,
            errText: Strings.ERR_UN_AUTH,
          ));
      runnerExpired.testGoldensSimple(
          testName: TestNameCommon.ERR_AUTH_EXPIRED);
      runner.testGoldensSimple(testName: TestNameCommon.NORMAL);
    });
