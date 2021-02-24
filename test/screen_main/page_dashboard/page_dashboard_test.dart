import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
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
import '../../mock_repository/graphql_common.dart';
import '../../mock_repository/hive_pref_empty.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_models.dart';
import '../../widget_test_util/test_name_common.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_util.dart';

const _kTestNameNoData = 'NoData';

/// test for [PageDashboardInMainScreen]
void main() => _TestRunner()
  ..runTestGroup('PageDashboardNormalScreen')
  ..runTestNormal();

class _TestRunner extends TestRunnerBase with TestRunnerOnPageError {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageDashboardInMainScreen(),
          ),
          goldenNamePrefix: 'PageDashboardNormalScreen',
        );

  /// todo add test;
  /// 1. loadMore test
  /// 2. now broadcasting program
  void runTestNormal() => group('PageDashboardNormalScreen', () {
        void testGoldenTemplate({
          @required String goldenName,
          FeatureProgramData featureProgramData,
          NewProgramsData newProgramsData,
          FutureOr<void> Function(WidgetTester tester) onPost,
          List<Finder> expectOneWidgetList = const [],
          List<Finder> expectNoWidgetList = const [],
        }) =>
            testGoldensSimple(
              testName: goldenName,
              overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kPrvGraphqlRepository
                    .overrideWithValue(GraphQlRepositoryCommonImpl(
                  featureProgramData: featureProgramData ??
                      JsonClient.instance.mFeatureProgramData,
                  newProgramsData:
                      newProgramsData ?? JsonClient.instance.mNewProgramsData,
                )),
                ...defaultOverride,
              ],
              onPostBuild: (tester) async {
                await tester.pump(5.seconds);
                (expectNoWidgetList + [find.byType(PageError)])
                    .forEach((it) => expect(it, findsNothing));
                expectOneWidgetList.forEach((it) => expect(it, findsOneWidget));
                onPost(tester);
              },
            );

        void expectChannelItem(Matcher matcher) => expect(
              find.descendant(
                of: find.byType(ChannelListItem),
                matching: find.byType(CircleCachedNetworkImage),
              ),
              matcher,
            );

        void expectHorizontalCarouseChildren({
          @required Key scenarioWidgetKey,
          @required Matcher matcher,
          int index = 0,
        }) {
          final actual = find.descendant(
              of: find.byType(HorizontalCarousels).at(index),
              matching: find.byType(HorizontalCarouselItem));
          expect(actual, matcher);
        }

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
          goldenName: TestNameCommon.NORMAL,
          expectOneWidgetList: [
            // find.text(Strings.HEADING_SUBSCRIBING),
            // find.text(Strings.HEADING_UPCOMING),
            // find.text(Strings.HEADING_CHANNEL),
            // find.text(Strings.HEADING_NEW_PRG),
            // find.byType(BillboardHeader),
            // find.byType(MovieListItem),
          ],
          onPost: (tester) async {
            // expectChannelItem(scenarioWidgetKey, findsWidgets);
            // expectUpComingAndSubscribingItemAreNotEmpty(scenarioWidgetKey);
          },
        );

        testGoldenTemplate(
          goldenName: TestNameCommon.EMPTY,
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
          onPost: (tester) {
            expectChannelItem(findsNothing);
          },
        );
      });
}
