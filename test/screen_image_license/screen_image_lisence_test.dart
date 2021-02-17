import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_image_lisence/screen_image_license.dart';

import '../widget_test_util/test_runner_base.dart';

Future<void> main() async {

  final runner = TestRunnerBase(() => const ScreenImageLicense());
  await runner.init();

  group('ScreenImageLicense', () {
    runner.testGoldensSimple(testName: 'normal', overrides: []);
  });
}
