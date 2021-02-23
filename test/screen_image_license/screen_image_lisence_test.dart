import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shirasu/screen_image_license/screen_image_license.dart';

import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';

Future<void> main() async {

  final runner = TestRunnerBase(() => const ScreenImageLicense());

  group('ScreenImageLicense', () {
    runner.testGoldensSimple(testName: TestNameCommon.NORMAL);
  });
}
