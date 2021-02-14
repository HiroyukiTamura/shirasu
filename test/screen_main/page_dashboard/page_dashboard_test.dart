import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/screen_main/page_dashboard/channel_list_item.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/connected_disconnect.dart';
import '../../mock_repository/graphql_common.dart';
import '../../mock_repository/graphql_error.dart';
import '../../mock_repository/graphql_timeout.dart';
import '../../mock_repository/graphql_unauthorized.dart';
import '../../mock_repository/hive_auth_empty.dart';
import '../../mock_repository/hive_pref_empty.dart';
import '../../mock_repository/network_image_error.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/override_util.dart';
import '../../widget_test_util/test_models.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_util.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';
const _kTestNameErrorUnAuth = 'ErrorUnAuth';
const _kTestNameErrorUnknown = 'ErrorUnknown';
const _kTestNameNoData = 'NoData';
const _kTestNameGoldenData = 'GoldenData';

/// test for [PageDashboardInMainScreen]
Future<void> main() async {
  final runner = _TestRunner();
  await runner.init();
  runner
    ..runTestErrScreen()
    ..runTestNormal();
}

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(() => const Scaffold(
              body: PageDashboardInMainScreen(),
            ));

  FeatureProgramData _mFeatureProgramData;
  NewProgramsData _mNewProgramsData;

  void runTestErrScreen() => group('PageDashboard error screen', () {
        testGoldensSimple(
            testName: _kTestNameErrorNetworkDisconnected,
            overrides: [kOverrideDisconnected],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.text(Strings.ERR_NETWORK_DISCONNECTED),
                matcher: findsOneWidget,
              );
            });
        testGoldensSimple(
            testName: _kTestNameErrorNetworkTimeout,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideGraphqlTimeout,
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await tester.pump(GraphQlRepositoryTimeoutImpl.DELAY + 5.seconds);
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.text(Strings.ERR_NETWORK_TIMEOUT),
                matcher: findsOneWidget,
              );
            });
        testGoldensSimple(
            testName: _kTestNameErrorAuthExpired,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideGraphqlUnAuthDetectedByTime,
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
              kOverrideEmptyHiveAuthRepository
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await tester.pump(3.seconds);
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.text(Strings.ERR_AUTH_EXPIRED),
                matcher: findsOneWidget,
              );
            });
        testGoldensSimple(
            testName: _kTestNameErrorUnAuth,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideGraphqlUnAuthNotDetectedByTime,
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
              kOverrideEmptyHiveAuthRepository
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await tester.pump(3.seconds);
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.text(Strings.ERR_UN_AUTH),
                matcher: findsOneWidget,
              );
            });
        testGoldensSimple(
            testName: _kTestNameErrorUnknown,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
              kOverrideGraphqlErr,
              kOverrideEmptyHiveAuthRepository
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await tester.pump(3.seconds);
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.text(Strings.SNACK_ERR),
                matcher: findsOneWidget,
              );
            });
      });

  Future<void> init() async {
    _mFeatureProgramData = await kJsonClient.featureProgramData;
    _mNewProgramsData = await kJsonClient.newProgramsData;
  }

  /// todo add test;
  /// 1. subscribing program
  /// 2. now broadcasting program
  void runTestNormal() => group('PageDashboardNormalScreen', () {
        void testGoldenTemplate({
          @required String goldenName,
          FeatureProgramData featureProgramData,
          NewProgramsData newProgramsData,
          Future<void> Function(Key scenarioWidgetKey) onScenarioCreatePost,
          List<Finder> expectOneWidgetList = const [],
          List<Finder> expectNoWidgetList = const [],
        }) {
          testGoldensSimple(
              testName: goldenName,
              overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kPrvHivePrefRepository.overrideWithValue(
                    const HivePrefEmptyRepositoryImpl(false)),
                kPrvGraphqlRepository
                    .overrideWithValue(GraphQlRepositoryCommonImpl(
                  featureProgramData:
                      featureProgramData ?? _mFeatureProgramData,
                  newProgramsData: newProgramsData ?? _mNewProgramsData,
                )),
              ],
              onScenarioCreate: (tester, scenarioWidgetKey) async {
                await tester.pump(5.seconds);
                (expectNoWidgetList + [find.byType(PageError)])
                    .forEach((it) => TestUtil.expectFind(
                          scenarioWidgetKey: scenarioWidgetKey,
                          matching: it,
                          matcher: findsNothing,
                        ));
                expectOneWidgetList.forEach((it) => TestUtil.expectFind(
                      scenarioWidgetKey: scenarioWidgetKey,
                      matching: it,
                      matcher: findsOneWidget,
                    ));
                if (onScenarioCreatePost != null)
                  await onScenarioCreatePost(scenarioWidgetKey);
              });
        }

        void expectChannelItem(Key scenarioWidgetKey, Matcher matcher) {
          TestUtil.expectFind(
            scenarioWidgetKey: scenarioWidgetKey,
            matching: find.descendant(
              of: find.byType(ChannelListItem),
              matching: find.byType(CircleCachedNetworkImage),
            ),
            matcher: matcher,
          );
        }

        void expectHorizontalCarouseChildren({
          @required Key scenarioWidgetKey,
          @required Matcher matcher,
          int index = 0,
        }) =>
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.descendant(
                  of: find.byType(HorizontalCarousels).at(index),
                  matching: find.byType(HorizontalCarouselItem)),
              matcher: matcher,
            );

        void expectUpComingAndSubscribingItemAreNotEmpty(
            Key scenarioWidgetKey) {
          TestUtil.expectFind(
            scenarioWidgetKey: scenarioWidgetKey,
            matching: find.byType(HorizontalCarousels),
            matcher: findsNWidgets(2),
          );
          expectHorizontalCarouseChildren(
            scenarioWidgetKey: scenarioWidgetKey,
            matcher: findsWidgets,
            index: 0,
          );
          expectHorizontalCarouseChildren(
            scenarioWidgetKey: scenarioWidgetKey,
            matcher: findsWidgets,
            index: 1,
          );
        }

        //todo fling and check
        testGoldenTemplate(
          goldenName: _kTestNameGoldenData,
          expectOneWidgetList: [
            // find.text(Strings.HEADING_SUBSCRIBING),
            // find.text(Strings.HEADING_UPCOMING),
            // find.text(Strings.HEADING_CHANNEL),
            // find.text(Strings.HEADING_NEW_PRG),
            // find.byType(BillboardHeader),
            // find.byType(MovieListItem),
          ],
          onScenarioCreatePost: (scenarioWidgetKey) async {
            // expectChannelItem(scenarioWidgetKey, findsWidgets);
            // expectUpComingAndSubscribingItemAreNotEmpty(scenarioWidgetKey);
          },
        );

        testGoldenTemplate(
          goldenName: _kTestNameNoData,
          featureProgramData: TestModels.FEATURE_PROGRAM_DATA,
          newProgramsData: TestModels.EMPTY_NEW_PROGRAMS,
          expectNoWidgetList: [
            find.byType(MovieListItem),
            find.text(Strings.HEADING_SUBSCRIBING),
            find.text(Strings.HEADING_CHANNEL),
            find.text(Strings.HEADING_NEW_PRG),
            find.text(Strings.HEADING_UPCOMING),
            find.byType(BillboardHeader),
            find.byType(HorizontalCarousels),
          ],
          onScenarioCreatePost: (scenarioWidgetKey) async =>
              expectChannelItem(scenarioWidgetKey, findsNothing),
        );
      });
}