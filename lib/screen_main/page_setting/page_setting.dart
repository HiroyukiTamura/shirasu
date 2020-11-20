import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/payment_methods_list.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_setting/email_status_label.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_payment_method.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_invoice_history.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_seem.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_subscribed_channel.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_top.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/model/auth_data.dart';

final _viewModelProvider = ChangeNotifierProvider.autoDispose<ViewModelSetting>(
    (_) => ViewModelSetting());

class PageSettingInMainScreen extends StatefulHookWidget {
  const PageSettingInMainScreen({Key key}) : super(key: key);

  @override
  _PageSettingInMainScreenState createState() =>
      _PageSettingInMainScreenState();
}

class _PageSettingInMainScreenState extends State<PageSettingInMainScreen>
    with AfterLayoutMixin<PageSettingInMainScreen> {

  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewModelProvider).setUpData();

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewModelProvider).value.when(
            preInitialized: () => const CenterCircleProgress(),
            error: () => const Text('error!'), //todo implement
            success: (data, locationStr) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(
                    vertical: Dimens.SETTING_OUTER_MARGIN),
                itemBuilder: (context, i) {
                  switch (i) {
                    case 1:
                      return ListTileTop(
                          iconUrl: data.viewerUser.icon,
                          userName: data.viewerUser.name);
                    case 2:
                      return _listItemUserName(ViewModelSetting.dummyUser);
                    case 4:
                      return ListItemEmail(
                        user: ViewModelSetting.dummyUser,
                      );
                    case 6:
                      return _listItem(
                        title: Strings.BIRTH_DATE_LABEL,
                        subTitle: DateFormat('yyyy/MM/dd').format(
                            ViewModelSetting.dummyUser
                                .httpsShirasuIoUserAttribute.birthDate),
                      );
                    case 7:
                      return _listItem(
                        title: Strings.JOB_LABEL,
                        subTitle: Strings.JOB_MAP[ViewModelSetting
                                .dummyUser.httpsShirasuIoUserAttribute.job] ??
                            Strings.DEFAULT_EMPTY,
                      );
                    case 8:
                      return _listItem(
                        title: Strings.PLACE_LABEL,
                        subTitle: locationStr,
                      );
                    case 9:
                      return const ListTileSeem();
                    case 10:
                      return _componentTitle(title: Strings.TITLE_CREDIT_CARD);
                    case 11:
                    case 12:
                      // todo VISA、Mastercard、JCB、American Express、DinersClub
                      return ListTilePaymentMethod(
                          paymentMethod: data.viewer.paymentMethods.first
                              as BasePaymentMethod); //todo why cast?
                    case 13:
                      return const ListTileSeem();
                    case 14:
                      return const ListTileTitle(
                          title: Strings.TITLE_SUBSCRIBED_CHANNELS);
                    case 15:
                      return ListTileSubscribedChannel(
                          subscribedChannel:
                              data.viewerUser.subscribedChannels.first);
                    case 16:
                      return const ListTileSeem();
                    case 17:
                      return const ListTileTitle(
                          title: Strings.TITLE_PURCHASE_HISTORY);
                    case 18:
                      return ListTileInvoiceHistory(
                          invoiceHistoryItem:
                              data.viewerUser.invoiceHistory.items.first);
                    default:
                      return const SizedBox();
                  }
                },
                itemCount: 20,
              );
            },
          );

  static Widget _listItem({
    @required String title,
    @required String subTitle,
  }) =>
      ListTile(
        title: Text(title),
        subtitle: Text(
          subTitle,
          style: TextStyles.SETTING_SUBTITLE,
        ),
      );

  static Widget _componentTitle({@required String title}) => Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: 8,
        ),
        child: Text(
          title,
          style: TextStyles.SETTING_COMPONENT_TITLE,
        ),
      );

  static Widget _listItemUserName(User user) {
    String userName =
        '${user.httpsShirasuIoUserAttribute.familyName} ${user.httpsShirasuIoUserAttribute.givenName}';
    if (user.httpsShirasuIoUserAttribute.familyNameReading != null &&
        user.httpsShirasuIoUserAttribute.givenNameReading != null)
      userName +=
          '(${user.httpsShirasuIoUserAttribute.familyNameReading} ${user.httpsShirasuIoUserAttribute.givenNameReading})';

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: Dimens.SETTING_OUTER_MARGIN, vertical: 8),
      title: const Text(Strings.FULL_NAME_LABEL),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: TextStyles.SETTING_SUBTITLE,
          ),
          const SizedBox(height: 4),
          const Text(
            Strings.FULL_NAME_NOTICE,
            style: TextStyle(height: 1.3),
          )
        ],
      ),
    );
  }
}
