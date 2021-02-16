import 'package:flutter/material.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/screen_main/page_setting/account/email_status_label.dart';
import 'package:test/test.dart';

import '../../../mock_repository/hive_auth_empty.dart';
import '../../../widget_test_util/test_runner_base.dart';
import '../../../widget_test_util/test_util.dart';

Future<void> main() async {
  final runner = _TestRunner();
  await runner.init();
  runner.runTest();
}

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: ListItemEmail(),
          ),
        );

  void runTest() => group('Setting_ListItemEmail', () {
        testGoldensSimple(testName: 'verified', overrides: [
          kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
            specAuthData: authData,
          )),
        ]);
        testGoldensSimple(testName: 'unverified_twitter', overrides: [
          kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
            specAuthData: authData.copyWith.body.decodedToken.user(
              emailVerified: false,
              sub: 'twitter',
            ),
          )),
        ]);
      });
}
