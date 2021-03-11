import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/screen_main/page_setting/account/email_status_label.dart';
import 'package:test/test.dart';

import '../../../mock_repository/hive_auth_empty.dart';
import '../../../widget_test_util/json_client.dart';
import '../../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: ListItemEmail(),
          ),
          goldenNamePrefix: 'EmailStatusLabel',
        );

  Override createOverride(HiveAuthData authData) =>
      kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
        specAuthData: authData,
      ));

  void runTest() => group('EmailStatusLabel', () {
        testGoldensSimple(testName: 'Verified', overrides: [
          createOverride(JsonClient.instance.mHiveAuthData),
        ]);
        testGoldensSimple(testName: 'UnverifiedTwitter', overrides: [
          createOverride(
            JsonClient.instance.mHiveAuthData.copyWith.body.decodedToken.user(
              emailVerified: false,
              sub: 'twitter',
            ),
          ),
        ]);
      });
}
