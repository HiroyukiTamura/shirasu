import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
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
import 'package:tuple/tuple.dart';

import '../../../mock_repository/connected_connected.dart';
import '../../../mock_repository/connected_disconnect.dart';
import '../../../mock_repository/graphql_common.dart';
import '../../../mock_repository/graphql_error.dart';
import '../../../mock_repository/graphql_timeout.dart';
import '../../../mock_repository/graphql_unauthorized.dart';
import '../../../mock_repository/hive_pref_empty.dart';
import '../../../mock_repository/network_image_error.dart';
import '../../../widget_test_util/json_client.dart';
import '../../../widget_test_util/override_util.dart';
import '../../../widget_test_util/test_util.dart';
import '../../../widget_test_util/widget_holder.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';
const _kTestNameErrorUnAuth = 'ErrorUnAuth';
const _kTestNameErrorUnknown = 'ErrorUnknown';
const _kTestNameNoData = 'NoData';
const _kTestNameGoldenData = 'GoldenData';

/// test for [PageDashboardInMainScreen]
void main() {
  final jsonClient = JsonClient();

  const EMPTY_BROAD_CASTINGS = Broadcastings(
    typename: 'SearchableProgramConnection',
    rawItems: [],
  );

  const EMPTY_NEW_PROGRAMS = NewProgramsData(
    newPrograms: NewPrograms(
      rawItems: [],
      typename: 'SearchableProgramConnection',
    ),
  );

  const EMPTY_CHANNEL = Channels(
    rawItems: [],
    typename: 'ModelChannelConnection',
  );

  const EMPTY_VIEWER_USER = ViewerUser(
    rawSubscribedPrograms: [],
    id: '',
    typename: 'User',
  );

  FeatureProgramData mFeatureProgramData;
  FeatureProgramData mFeatureProgramDataEmpty;
  NewProgramsData mNewProgramsData;

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
        widget: _widget(
          kOverrideUtil.createOverrides(overrides),
        ),
        onScenarioCreate: onScenarioCreate,
      );

  void _findNothingRaisedBtn(Key scenarioWidgetKey) => TestUtil.expectFind(
        scenarioWidgetKey: scenarioWidgetKey,
        matching: find.byType(RaisedButton),
        matcher: findsNothing,
      );

  setUpAll(() async {
    mFeatureProgramData = await jsonClient.featureProgramData;
    mFeatureProgramDataEmpty = mFeatureProgramData.copyWith(
      channels: EMPTY_CHANNEL,
      nowBroadcastings: EMPTY_BROAD_CASTINGS,
      comingBroadcastings: EMPTY_BROAD_CASTINGS,
      viewerUser: EMPTY_VIEWER_USER,
    );
    mNewProgramsData = await jsonClient.newProgramsData;
  });

  group('PageDashboard error screen', () {
    testGoldens(
      _kTestNameErrorNetworkDisconnected,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryDisconnectedImpl()),
            kPrvNetworkRepository
                .overrideWithValue(NetworkImageRepositoryErrorImpl()),
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

  /// todo add test;
  /// 1. subscribing program
  /// 2. now broadcasting program
  group('PageDashboardNormalScreen', () {
    void testGoldenTemplate({
      @required String goldenName,
      FeatureProgramData featureProgramData,
      NewProgramsData newProgramsData,
      Future<void> Function(Key scenarioWidgetKey) onScenarioCreatePost,
      List<Finder> expectOneWidgetList,
      List<Finder> expectNoWidgetList,
    }) =>
        testGoldens(
          goldenName,
          (tester) async => _matchGolden(
            overrides: [
              kPrvConnectivityRepository
                  .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
              kPrvGraphqlRepository
                  .overrideWithValue(GraphQlRepositoryCommonImpl(
                featureProgramData: featureProgramData ?? mFeatureProgramData,
                newProgramsData: newProgramsData ?? mNewProgramsData,
              )),
            ],
            tester: tester,
            goldenName: goldenName,
            onScenarioCreate: (scenarioWidgetKey) async {
              await tester.pump(5.seconds);
              expectNoWidgetList
                ..add(find.byType(PageError))
                ..forEach((it) => TestUtil.expectFind(
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
            },
          ),
        );

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

    void expectUpComingAndSubscribingItemAreNotEmpty(Key scenarioWidgetKey) {
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

    void expectUpComingAndSubscribingItemAreEmpty(Key scenarioWidgetKey) {
      TestUtil.expectFind(
        scenarioWidgetKey: scenarioWidgetKey,
        matching: find.byType(HorizontalCarousels),
        matcher: findsOneWidget,
      );
      expectHorizontalCarouseChildren(
        scenarioWidgetKey: scenarioWidgetKey,
        matcher: findsWidgets,
      );
    }

    testGoldenTemplate(
      goldenName: _kTestNameGoldenData,
      expectOneWidgetList: [
        find.text(Strings.HEADING_SUBSCRIBING),
        find.text(Strings.HEADING_UPCOMING),
        find.text(Strings.HEADING_CHANNEL),
        find.text(Strings.HEADING_NEW_PRG),
        find.byType(BillboardHeader),
        find.byType(MovieListItem),
      ],
      onScenarioCreatePost: (scenarioWidgetKey) async {
        expectChannelItem(scenarioWidgetKey, findsWidgets);
        expectUpComingAndSubscribingItemAreNotEmpty(scenarioWidgetKey);
      },
    );

    testGoldenTemplate(
      goldenName: _kTestNameNoData,
      featureProgramData: mFeatureProgramDataEmpty,
      newProgramsData: EMPTY_NEW_PROGRAMS,
      expectOneWidgetList: [
        find.text(Strings.HEADING_CHANNEL),
        find.text(Strings.HEADING_NEW_PRG),
        find.text(Strings.HEADING_UPCOMING),
        find.byType(BillboardHeader),
      ],
      expectNoWidgetList: [
        find.byType(MovieListItem),
        find.text(Strings.HEADING_SUBSCRIBING),
      ],
      onScenarioCreatePost: (scenarioWidgetKey) async {
        expectChannelItem(scenarioWidgetKey, findsNothing);
        expectUpComingAndSubscribingItemAreEmpty(scenarioWidgetKey);
      },
    );
  });
}
