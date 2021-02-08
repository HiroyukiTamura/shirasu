import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_pre_login/screen_pre_login.dart';

import '../../test_util.dart';

const String _kTestNameGolden = 'Golden';

void testUiOnScreenPreLogin() {
  group('ScreenPreLogin', () {
    testGoldens(
      _kTestNameGolden,
      (tester) async => TestUtil.matchGolden(
        tester: tester,
        goldenName: _kTestNameGolden,
        widget: const _ScreenPreLogin(),
      ),
    );
  });
}

class _ScreenPreLogin extends StatelessWidget {
  const _ScreenPreLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ProviderScope(
        child: Theme(
          data: Styles.theme,
          child: const ScreenPreLogin(),
        ),
      );
}
