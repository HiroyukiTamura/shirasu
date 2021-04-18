import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/styles.dart';

import '../mock_repository/hive_pref_empty.dart';
import 'json_client.dart';
import 'override_util.dart';
import 'test_util.dart';

typedef WidgetBuilder = Widget Function();

class TestRunnerBase {
  TestRunnerBase(this.builder, {this.goldenNamePrefix = ''});

  static const NEXT_TOKEN = 'NEXT_TOKEN';

  final WidgetBuilder builder;
  final String goldenNamePrefix;

  final defaultOverride = kOverrideUtil.createOverrides([
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
  ]);

  ProgramDetailData get mProgramDetailData =>
      JsonClient.instance.mProgramDetailData;

  ChannelData get mChannelData => JsonClient.instance.mChannelData;

  void testGoldensSimple({
    @required String testName,
    List<Override> overrides = const [],
    OnPostBuild onPostBuild,
    List<Device> devices = const [],
    bool skip = false,
  }) =>
      testGoldens(
        testName,
        (tester) async {
          await tester.pumpWidgetBuilder(
            ProviderScope(
              overrides: kOverrideUtil.createOverrides(overrides),
              child: builder(),
            ),
            wrapper: materialAppWrapper(
              theme: Styles.theme,
            ),
          );

          if (onPostBuild != null) await onPostBuild(tester);

          var testDevices = devices;
          if (testDevices?.isNotEmpty != true)
            testDevices = TestUtil.allDevices;

          await multiScreenGolden(
            tester,
            '$goldenNamePrefix$testName',
            devices: testDevices,
          );
        },
        skip: skip,
      );
}
