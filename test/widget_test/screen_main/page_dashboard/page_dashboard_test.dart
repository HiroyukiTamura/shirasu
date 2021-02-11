import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/env.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/page_error.dart';

import '../../../mock_repository/connected_connected.dart';
import '../../../mock_repository/connected_disconnect.dart';
import '../../../mock_repository/graphql_common.dart';
import '../../../mock_repository/graphql_error.dart';
import '../../../mock_repository/graphql_timeout.dart';
import '../../../mock_repository/graphql_unauthorized.dart';
import '../../../mock_repository/hive_pref_empty.dart';
import '../../../mock_repository/network_image_error.dart';
import '../../../mock_repository/test_env.dart';
import '../../../widget_test_util/json_client.dart';
import '../../../widget_test_util/test_cache_manager.dart';
import '../../../widget_test_util/test_util.dart';
import '../../../widget_test_util/widget_holder.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';
const _kTestNameErrorUnAuth = 'ErrorUnAuth';
const _kTestNameErrorUnknown = 'ErrorUnknown';
const _kTestNameNowBroadcasting = 'NowBroadcasting';

/// test for [PageDashboardInMainScreen]
void main() {

  final jsonClient = JsonClient();

  FeatureProgramData featureProgramData;
  NewProgramsData newProgramsData;

  Widget _widget(List<Override> overrides) => WidgetHolder(
        overrides: overrides,
        child: const Scaffold(
          body: PageDashboardInMainScreen(),
        ),
      );

  Future<void> _matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    List<Override> overrides = const [],
    OnScenarioCreate onScenarioCreate,
  }) async =>
      TestUtil.matchGolden(
        tester: tester,
        goldenName: goldenName,
        widget: _widget(overrides),
        onScenarioCreate: onScenarioCreate,
      );

  void _findNothingRaisedBtn(Key scenarioWidgetKey) => TestUtil.expectFind(
        scenarioWidgetKey: scenarioWidgetKey,
        matching: find.byType(RaisedButton),
        matcher: findsNothing,
      );

  setUpAll(() async {
    featureProgramData = await jsonClient.featureProgramData;
    newProgramsData = await jsonClient.newProgramsData;
  });

  group('PageDashboard error screen', () {
    testGoldens(
      _kTestNameErrorNetworkDisconnected,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryDisconnectedImpl()),
            kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
            kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorNetworkDisconnected,
          onScenarioCreate: (scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_NETWORK_DISCONNECTED),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
    testGoldens(
      _kTestNameErrorNetworkTimeout,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
            kPrvGraphqlRepository
                .overrideWithValue(const GraphQlRepositoryTimeoutImpl()),
            kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
            kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorNetworkTimeout,
          onScenarioCreate: (scenarioWidgetKey) async {
            await tester.pump(GraphQlRepositoryTimeoutImpl.DELAY + 5.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_NETWORK_TIMEOUT),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
    testGoldens(
      _kTestNameErrorAuthExpired,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
            kPrvGraphqlRepository
                .overrideWithValue(GraphQlRepositoryUnauthorizedImpl(true)),
            kPrvHivePrefRepository
                .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
            kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
            kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorAuthExpired,
          onScenarioCreate: (scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_AUTH_EXPIRED),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
    testGoldens(
      _kTestNameErrorUnAuth,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
            kPrvGraphqlRepository
                .overrideWithValue(GraphQlRepositoryUnauthorizedImpl(false)),
            kPrvHivePrefRepository
                .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
            kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
            kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorUnAuth,
          onScenarioCreate: (scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_UN_AUTH),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
    testGoldens(
      _kTestNameErrorUnknown,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
            kPrvHivePrefRepository
                .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
            kPrvGraphqlRepository
                .overrideWithValue(const GraphQlRepositoryErrorImpl()),
            kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
            kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorUnknown,
          onScenarioCreate: (scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.SNACK_ERR),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
  });

  group('PageDashboardNormalScreen', () {
    testGoldens(
      _kTestNameNowBroadcasting,
      (tester) async => _matchGolden(
            overrides: [
              kPrvConnectivityRepository
                  .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
              kPrvGraphqlRepository
                  .overrideWithValue(GraphQlRepositoryCommonImpl(
                featureProgramData: featureProgramData,
                newProgramsData: newProgramsData,
              )),
              kPrvNetworkRepository.overrideWithValue(NetworkImageRepositoryErrorImpl()),
              kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl()),
            ],
            tester: tester,
            goldenName: _kTestNameNowBroadcasting,
            onScenarioCreate: (scenarioWidgetKey) async {
              await tester.pump(5.seconds);
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.byType(PageError),
                matcher: findsNothing,
              );
            }),
    );
  });
}
