import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/resource/styles.dart';

import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';
import 'override_util.dart';
import 'test_runner_on_page_error.dart';
import 'test_util.dart';

typedef WidgetBuilder = Widget Function();

class TestRunnerBase {
  TestRunnerBase(this.builder, {this.goldenNamePrefix = ''});

  @protected
  HiveAuthData authData;
  @protected
  ViewerWrapper viewerWrapper;
  @protected
  ChannelData channelData;
  @protected
  ProgramDetailData programDetailData;
  @protected
  ListCommentsByProgram listCommentsByProgram;

  Future<void> init() async {
    authData = await kJsonClient.hiveAuth;
    viewerWrapper = await kJsonClient.viewerWrapper;
    channelData = await kJsonClient.channel;
    programDetailData = await kJsonClient.programDetail;
    listCommentsByProgram = await kJsonClient.listCommentsByProgram;
  }

  final WidgetBuilder builder;
  final String goldenNamePrefix;

  final defaultOverride = kOverrideUtil.createOverrides([
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
  ]);

  Future<void> matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    List<Override> overrides = const [],
    OnScenarioCreate onScenarioCreate,
    ThemeData theme,
    OnPostBuild onPostBuild,
  }) async {

    await tester.pumpWidgetBuilder(
      ProviderScope(
        overrides: kOverrideUtil.createOverrides(overrides),
        child: builder(),
      ),
      wrapper: materialAppWrapper(
        theme: theme ?? Styles.theme,
      ),
    );

    if (onPostBuild != null) await onPostBuild(tester);

    await multiScreenGolden(tester, goldenName, devices: TestUtil.allDevices);
  }

  void testGoldensSimple({
    @required String testName,
    List<Override> overrides = const [],
    OnScenarioCreateTest onScenarioCreate,
    OnPostBuild onPostBuild,
  }) =>
      testGoldens(
        testName,
        (tester) async => matchGolden(
          overrides: overrides,
          tester: tester,
          goldenName: '$goldenNamePrefix$testName',
          onScenarioCreate: (key) async {
            if (onScenarioCreate != null) return onScenarioCreate(tester, key);
          },
          onPostBuild: onPostBuild,
        ),
      );
}
