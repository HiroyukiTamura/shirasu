import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_channel/page_channel_detail.dart';
import 'package:shirasu/screen_channel/page_movie_list.dart';
import 'package:shirasu/screen_channel/page_notification.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/ui_common/billing_btn.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';

import '../mock_viewmodel/viewmodel_channel_mockable.dart';
import '../widget_test_util/test_runner_base.dart';
import '../widget_test_util/test_util.dart';

Future<void> main() async {
  final channelId = await kJsonClient.channel.then((it) => it.channel.id);

  final runner = _TestRunner(channelId);
  await runner.init();
  runner.runTestScreen();
}

class _TestRunner extends TestRunnerBase {
  _TestRunner(this.channelId)
      : super(() => Scaffold(
              body: ScreenChannel(
                channelId: channelId,
              ),
            ));

  final String channelId;

  void runTestScreen() {
    final overrideNormal = kPrvViewModelChannel(channelId).overrideWithProvider(
      ViewModelChannelMockable.createProvider(
          ChannelModel.success(
              ChannelDataWrapper(data: channelData, loading: false)),
          channelId),
    );

    final overrideNoAnnounce =
        kPrvViewModelChannel(channelId).overrideWithProvider(
      ViewModelChannelMockable.createProvider(
          ChannelModel.success(ChannelDataWrapper(
            data: channelData.copyWith.channel.announcements(rawItems: []),
            loading: false,
          )),
          channelId),
    );

    final overrideNonPurchased =
        kPrvViewModelChannel(channelId).overrideWithProvider(
      ViewModelChannelMockable.createProvider(
          ChannelModel.success(ChannelDataWrapper(
            data: channelData.copyWith.channel.subscriptionPlan
                .viewerPurchasedPlan(
              isActive: false,
            ),
            loading: false,
          )),
          channelId),
    );

    final overrideNoPurchasable =
        kPrvViewModelChannel(channelId).overrideWithProvider(
      ViewModelChannelMockable.createProvider(
          ChannelModel.success(ChannelDataWrapper(
            data: channelData.copyWith.channel
                .subscriptionPlan(isPurchasable: false)
                .copyWith
                .channel
                .subscriptionPlan
                .viewerPurchasedPlan(
                  isActive: false,
                ),
            loading: false,
          )),
          channelId),
    );

    group('ScreenChannel', () {
      testGoldensSimple(
          testName: 'PreInitialized',
          overrides: [
            kPrvViewModelChannel(channelId).overrideWithProvider(
                ViewModelChannelMockable.createProvider(
                    const ChannelModel.preInitialized(), channelId)),
          ],
          onScenarioCreate: (tester, scenarioWidgetKey) async =>
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.byType(CenterCircleProgress),
                matcher: findsOneWidget,
              ));
      testGoldensSimple(
          testName: 'ErrUnknown',
          overrides: [
            kPrvViewModelChannel(channelId).overrideWithProvider(
              ViewModelChannelMockable.createProvider(
                  const ChannelModel.error(ErrorMsgCommon.unknown()),
                  channelId),
            ),
          ],
          onScenarioCreate: (tester, scenarioWidgetKey) async =>
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.byType(PageError),
                matcher: findsOneWidget,
              ));
      testGoldensSimple(
          testName: 'Normal_Tab_1st',
          overrides: [overrideNormal],
          onScenarioCreate: (tester, scenarioWidgetKey) async =>
              TestUtil.expectFind(
                scenarioWidgetKey: scenarioWidgetKey,
                matching: find.byType(PageChannelDetail),
                matcher: findsOneWidget,
              ));
      testGoldensSimple(
          testName: 'Normal_Tab_2nd',
          overrides: [overrideNormal],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            final tab2nd = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.text(Strings.CHANNEL_TAB_MOVIE),
            );
            await tester.tap(tab2nd);
            await tester.pumpAndSettle();
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(PageMovieList),
              matcher: findsOneWidget,
            );
          });
      testGoldensSimple(
          testName: 'Normal_Tab_3rd',
          overrides: [overrideNormal],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            final tab3rd = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.text(Strings.CHANNEL_TAB_NOTIFICATION),
            );
            await tester.tap(tab3rd);
            await tester.pumpAndSettle();
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(PageNotification),
              matcher: findsOneWidget,
            );
          });
      testGoldensSimple(
          testName: 'Normal_NoAnnouncements',
          overrides: [overrideNoAnnounce],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.CHANNEL_TAB_NOTIFICATION),
              matcher: findsNothing,
            );
          });
      testGoldensSimple(
          testName: 'Normal_Purchased',
          overrides: [overrideNormal],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(PurchasedBannerMedium),
              matcher: findsOneWidget,
            );
          });
      testGoldensSimple(
          testName: 'Normal_NonPurchased',
          overrides: [overrideNonPurchased],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(BillingBtnMedium),
              matcher: findsOneWidget,
            );
          });
      testGoldensSimple(
          testName: 'Normal_NoPurchasable',
          overrides: [overrideNoPurchasable],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(BillingBtnMedium),
              matcher: findsNothing,
            );
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.byType(PurchasedBannerMedium),
              matcher: findsNothing,
            );
          });
    });
  }
}
