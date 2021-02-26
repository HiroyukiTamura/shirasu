import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
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
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';

void main() =>
    _TestRunner(JsonClient.instance.mChannelData.channel.id).runTestScreen();

class _TestRunner extends TestRunnerBase {
  _TestRunner(this.channelId)
      : super(() => Scaffold(
              body: ScreenChannel(
                channelId: channelId,
              ),
            ));

  final String channelId;

  Override createOverride(ChannelModel model) =>
      kPrvViewModelChannel(channelId).overrideWithProvider(
        ViewModelChannelMockable.createProvider(model, channelId),
      );

  void runTestScreen() {
    final overrideNormal = createOverride(ChannelModel.success(
        ChannelDataWrapper(data: mChannelData, loading: false)));

    final overrideNoAnnounce = createOverride(
      ChannelModel.success(ChannelDataWrapper(
        data: mChannelData.copyWith.channel.announcements(rawItems: []),
        loading: false,
      )),
    );

    final overrideNonPurchased = createOverride(
      ChannelModel.success(ChannelDataWrapper(
        data: mChannelData.copyWith.channel.subscriptionPlan.viewerPurchasedPlan(
          isActive: false,
        ),
        loading: false,
      )),
    );

    final overrideNoPurchasable = createOverride(
      ChannelModel.success(ChannelDataWrapper(
        data: mChannelData.copyWith.channel
            .subscriptionPlan(isPurchasable: false)
            .copyWith
            .channel
            .subscriptionPlan
            .viewerPurchasedPlan(
              isActive: false,
            ),
        loading: false,
      )),
    );

    group('ScreenChannel', () {
      testGoldensSimple(
        testName: TestNameCommon.PRE_INIT,
        overrides: [
          createOverride(const ChannelModel.preInitialized()),
        ],
        onPostBuild: (tester) =>
            expect(find.byType(CenterCircleProgress), findsOneWidget),
      );
      testGoldensSimple(
        testName: TestNameCommon.ERR_UNKNOWN,
        overrides: [
          createOverride(const ChannelModel.error(ErrorMsgCommon.unknown()))
        ],
        onPostBuild: (tester) {
          expect(find.byType(PageError), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_Tab_1st',
        overrides: [overrideNormal],
        onPostBuild: (tester) {
          expect(find.byType(PageChannelDetail), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_Tab_2nd',
        overrides: [overrideNormal],
        onPostBuild: (tester) async {
          await tester.tap(find.text(Strings.CHANNEL_TAB_MOVIE));
          await tester.pumpAndSettle();
          expect(find.byType(PageMovieList), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_Tab_3rd',
        overrides: [overrideNormal],
        onPostBuild: (tester) async {
          await tester.tap(find.text(Strings.CHANNEL_TAB_NOTIFICATION));
          await tester.pumpAndSettle();
          expect(find.byType(PageNotification), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_NoAnnouncements',
        overrides: [overrideNoAnnounce],
        onPostBuild: (tester) async {
          await tester.tap(find.text(Strings.CHANNEL_TAB_NOTIFICATION));
          await tester.pumpAndSettle();
          final finder = find.widgetWithText(
              PageErrText, Strings.CHANNEL_ANNOUNCEMENTS_EMPTY_MSG);
          expect(finder, findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_Purchased',
        overrides: [overrideNormal],
        onPostBuild: (tester) {
          expect(find.byType(PurchasedBannerMedium), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_NonPurchased',
        overrides: [overrideNonPurchased],
        onPostBuild: (tester) {
          expect(find.byType(BillingBtnMedium), findsOneWidget);
        },
      );
      testGoldensSimple(
        testName: 'Normal_NoPurchasable',
        overrides: [overrideNoPurchasable],
        onPostBuild: (tester) {
          expect(find.byType(BillingBtnMedium), findsNothing);
          expect(find.byType(PurchasedBannerMedium), findsNothing);
        },
      );
    });
  }
}
