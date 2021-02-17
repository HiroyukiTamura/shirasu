import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_error/screen_error.dart';
import 'package:shirasu/screen_image_lisence/screen_image_license.dart';

import '../widget_test_util/test_runner_base.dart';

void main() => group('ScreenError', () {
      final runnerExpired =
          TestRunnerBase(() => const ScreenError(authExpired: true));
      final runner =
          TestRunnerBase(() => const ScreenError(authExpired: false));
      runnerExpired.testGoldensSimple(testName: 'auth_expired');
      runner.testGoldensSimple(testName: 'normal');
    });
