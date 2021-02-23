import 'dart:async';
import 'dart:io';

import 'package:golden_toolkit/golden_toolkit.dart';

import 'widget_test_util/json_client.dart';

/// ref: https://github.com/eBay/flutter_glove_box/blob/master/packages/golden_toolkit/test/flutter_test_config.dart
Future<void> main(FutureOr<void> testMain()) async {

  return GoldenToolkit.runWithConfiguration(
        () async {
      await loadAppFonts();
      await testMain();
      await JsonClient.instance.init();
    },
    config: GoldenToolkitConfiguration(
      // Currently, goldens are not generated/validated in CI for this repo. We have settled on the goldens for this package
      // being captured/validated by developers running on MacOSX. We may revisit this in the future if there is a reason to invest
      // in more sophistication
      skipGoldenAssertion: () => !Platform.isMacOS,
    ),
  );
}