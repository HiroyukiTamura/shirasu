import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_setting/account/list_item_user_name.dart';
import 'package:shirasu/screen_main/page_setting/app_config/page_app_config.dart';
import 'package:shirasu/screen_main/page_setting/account/email_status_label.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_birthdate.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_job.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_load_more.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_location.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_title.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_payment_method.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_invoice_history.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_seem.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_subscribed_channel.dart';
import 'package:shirasu/screen_main/page_setting/account/list_tile_top.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/material_tab_view.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/extension.dart';

part 'page_setting.g.dart';

final settingViewModelSProvider =
    StateNotifierProvider.autoDispose<ViewModelSetting>(
        (ref) => ViewModelSetting(ref.read));

@swidget
Widget pageSettingInMainScreen() => const MaterialTabView(
      tabs: [
        Tab(text: Strings.TAB_USER_INFO),
        Tab(text: Strings.TAB_APP_CONFIG)
      ],
      pages: [PageUserInfo(), PageAppConfig()],
    );

class PageUserInfo extends HookWidget {
  const PageUserInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      useProvider(settingViewModelSProvider.state
          .select((it) => it.settingModelState)).when(
        preInitialized: () => const CenterCircleProgress(),
        loading: () => const CenterCircleProgress(),
        error: () => const PageError(),
        success: (data) => ListView.builder(
          padding:
              const EdgeInsets.symmetric(vertical: Dimens.SETTING_OUTER_MARGIN),
          itemBuilder: (context, i) {
            final threshHolds = _Thresholds();

            if (i <= threshHolds.threshold)
              return _genListItemAboveCreditCard(context, data, i);

            threshHolds.swap(data.viewer.paymentMethods.length);

            if (i <= threshHolds.threshold)
              return ListTilePaymentMethod(
                paymentMethod: data
                    .viewer.paymentMethods[i - threshHolds.preThreshHold - 1],
              );

            threshHolds.swap(2);

            if (i <= threshHolds.threshold) {
              switch (i - threshHolds.preThreshHold - 1) {
                case 0:
                  return ListTileSeem(
                    paddingTop: data.viewer.paymentMethods.isNotEmpty,
                    paddingBtm: true,
                  );
                case 1:
                  return ListTileTitle(
                    title: Strings.TITLE_SUBSCRIBED_CHANNELS,
                    showEmptyText: data.viewerUser.subscribedChannels.isEmpty,
                    isCreditCard: false,
                  );
              }
              throw Exception();
            }

            threshHolds.swap(data.viewerUser.subscribedChannels.length);

            if (i <= threshHolds.threshold) {
              final index = i - threshHolds.preThreshHold - 1;
              return ListTileSubscribedChannel(
                subscribedChannel: data.viewerUser.subscribedChannels[index],
              );
            }

            threshHolds.swap(2);

            if (i <= threshHolds.threshold) {
              switch (i - threshHolds.preThreshHold - 1) {
                case 0:
                  return const ListTileSeem(
                    paddingBtm: true,
                    paddingTop: true,
                  );
                case 1:
                  return ListTileTitle(
                    title: Strings.TITLE_PURCHASE_HISTORY,
                    showEmptyText: data.viewerUser.invoiceHistory.items.isEmpty,
                    isCreditCard: false,
                  );
              }
              throw Exception();
            }

            threshHolds.swap(data.viewerUser.invoiceHistory.items.length);

            if (i <= threshHolds.threshold) {
              final index = i - threshHolds.preThreshHold - 1;
              return ListTileInvoiceHistory(
                invoiceHistoryItem: data.viewerUser.invoiceHistory.items[index],
              );
            }

            threshHolds.swap(2);

            if (i <= threshHolds.threshold) {
              switch (i - threshHolds.preThreshHold - 1) {
                case 0:
                  return const ListTileSeem(
                    paddingBtm: true,
                    paddingTop: true,
                  );
                case 1:
                  return ListTileTitle(
                    title: Strings.TITLE_WATCH_HISTORY,
                    showEmptyText: data.viewerUser.watchHistories.items.isEmpty,
                    isCreditCard: false,
                  );
              }
              throw Exception();
            }

            threshHolds.swap(data.viewerUser.watchHistories.items.length);

            if (i <= threshHolds.threshold) {
              final index = i - threshHolds.preThreshHold - 1;
              final program =
                  data.viewerUser.watchHistories.items[index].program;
              return MovieListItem(
                program: program,
                onTap: () async => context.pushProgramPage(program.id),
              );
            }

            return const ListTileLoadMore();
          },
          itemCount: 15 +
              data.viewer.paymentMethods.length +
              data.viewerUser.subscribedChannels.length +
              data.viewerUser.invoiceHistory.items.length +
              data.viewerUser.watchHistories.items.length,
        ),
      );

  //todo extract
  static Widget listItem({
    @required BuildContext context,
    @required String title,
    @required String subTitle,
    GestureTapCallback onTap,
  }) =>
      ListTile(
        title: Text(title),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        onTap: onTap,
      );

  static Widget _genListItemAboveCreditCard(
    BuildContext context,
    Viewer viewer,
    int index,
  ) {
    switch (index) {
      case 0:
        return ListTileTop(
          iconUrl: viewer.viewerUser.icon,
          userName: viewer.viewerUser.name,
        );
      case 1:
        return ListItemUserName(user: ViewModelSetting.dummyUser);
      case 2:
        return ListItemEmail(
          user: ViewModelSetting.dummyUser,
        );
      case 3:
        return const ListTileBirthDate();
      case 4:
        return const ListTileJob();
      case 5:
        return const ListTileLocation();
      case 6:
        return const ListTileSeem(
          paddingBtm: false,
          paddingTop: true,
        );
      case 7:
        return ListTileTitle(
          title: Strings.TITLE_CREDIT_CARD,
          showEmptyText: viewer.viewer.paymentMethods.isEmpty,
          isCreditCard: true,
        );
      default:
        throw Exception('unexpected index: $index');
    }
  }
}

class _Thresholds {
  int _preThreshHold = 7;
  int _threshold = 7;

  void swap(int num) {
    _preThreshHold = _threshold;
    _threshold += num;
  }

  int get preThreshHold => _preThreshHold;

  int get threshold => _threshold;
}
