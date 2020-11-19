import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_main/page_setting/email_status_label.dart';
import 'package:shirasu/screen_main/page_setting/external_auth.dart';
import 'package:shirasu/screen_main/page_setting/heading.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_editable.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_normal.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_small.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_user_name.dart';
import 'package:shirasu/screen_main/page_setting/user_name_and_icon.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

final _viewModelProvider = ChangeNotifierProvider.autoDispose<ViewModelSetting>(
    (_) => ViewModelSetting());

class PageSettingInMainScreen extends StatefulHookWidget {
  const PageSettingInMainScreen({Key key}) : super(key: key);

  @override
  _PageSettingInMainScreenState createState() =>
      _PageSettingInMainScreenState();
}

class _PageSettingInMainScreenState extends State<PageSettingInMainScreen> {
  static const _DUMMY_FAMILY_NAME = '山田';
  static const _DUMMY_FIRST_NAME = '太郎';
  static const _DUMMY_FAMILY_READABLE_NAME = 'やまだ';
  static const _DUMMY_FIRST_READABLE_NAME = 'たろう';
  static const _DUMMY_USER_EMAIL = 'fugahoge@gmail.com';
  static const _DUMMY_USER_JOB = 'IT関係';
  static const _DUMMY_USER_COUNTRY = '日本';
  static const _DUMMY_USER_PREFECTURE = '東京';
  static const _DUMMY_CARD_NUM = '1234';
  static const _DUMMY_CARD_EXPIRE_DATE = '25/02';
  static const _DUMMY_START_SUBSCRIPTION_DATE = '2020/11/02';
  static const _DUMMY_CURRENT_PERIOD_END_AT = '2020/11/02';
  final _DUMMY_BIRTH_DATE = DateTime.now();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read(_viewModelProvider).setUpData());
  }

  @override
  Widget build(BuildContext context) => useProvider(_viewModelProvider)
      .value
      .when(
        preInitialized: () => const CenterCircleProgress(),
        error: () => const Text('error!'), //todo implement
        success: (data) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (context, i) {
              switch (i) {
                // case 0:
                //   return SizedBox(
                //     height: 32,
                //   );
                // return const Heading(Strings.TITLE_USER_INFO);
                case 1:
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(data.viewerUser.icon),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          data.viewerUser.name,
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  );
                case 2:
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: Text(Strings.FULL_NAME_LABEL),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$_DUMMY_FAMILY_NAME $_DUMMY_FIRST_NAME($_DUMMY_FAMILY_READABLE_NAME $_DUMMY_FIRST_READABLE_NAME)',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          Strings.FULL_NAME_NOTICE,
                          style: TextStyle(height: 1.3),
                        )
                      ],
                    ),
                  );
                // case 3:
                //   return ListTileUserName(
                //     firstName: _DUMMY_FIRST_NAME,
                //     firstNameReadable: _DUMMY_FIRST_READABLE_NAME,
                //     familyName: _DUMMY_FAMILY_NAME,
                //     familyNameReadable: _DUMMY_FAMILY_READABLE_NAME,
                //   );
                case 4:
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: const Text(Strings.MAIL_ADDRESS),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _DUMMY_USER_EMAIL,
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            EmailStatusLabel(isVerified: false),
                            const SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 4,
                              ),
                              margin: const EdgeInsets.only(top: 4),
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: RichText(
                                  maxLines: 1,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    children: [
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.top,
                                        child: Icon(
                                          FontAwesomeIcons.twitter,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 4)),
                                      TextSpan(
                                        text: '連携済',
                                        style: TextStyle(
                                          height: 1,
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                case 6:
                  return ListTile(
                    title: const Text(Strings.BIRTH_DATE_LABEL),
                    subtitle: Text(
                      DateFormat('yyyy.MM.dd').format(_DUMMY_BIRTH_DATE),
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  );
                case 7:
                  return ListTile(
                    title: const Text(Strings.JOB_LABEL),
                    subtitle: Text(
                      _DUMMY_USER_JOB,
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  );
                case 8:
                  return ListTile(
                    title: const Text(Strings.PLACE_LABEL),
                    subtitle: Text(
                      '$_DUMMY_USER_COUNTRY $_DUMMY_USER_PREFECTURE',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  );
                case 9:
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    height: 1,
                    color: Colors.white24,
                  );
                case 10:
                  return Container(
                    padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      bottom: 8,
                    ),
                    child: const Text(
                      Strings.TITLE_CREDIT_CARD,
                      style: TextStyle(height: 1),
                    ),
                  );
                case 11:
                case 12:
                  // todo VISA、Mastercard、JCB、American Express、DinersClub
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.ccMastercard,
                      color: Colors.white,
                    ),
                    title: Text('XXXX-XXXX-XXXX-$_DUMMY_CARD_NUM'),
                    subtitle: Text(
                      '${Strings.CARD_EXPIRY}: $_DUMMY_CARD_EXPIRE_DATE',
                    ),
                  );
                case 13:
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    height: 1,
                    color: Colors.white24,
                  );
                case 14:
                  return Container(
                    padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      bottom: 8,
                    ),
                    child: const Text(
                      Strings.TITLE_SUBSCRIBED_CHANNELS,
                      style: TextStyle(height: 1),
                    ),
                  );
                case 15:
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    leading: SizedBox(
                      height: 40,
                      width: 40,
                      child: data.viewerUser.subscribedChannels.first.channel
                                  .icon ==
                              null
                          ? Assets.defaultChannelIcon.svg()
                          : CachedNetworkImage(
                              height: 40,
                              width: 40,
                              imageUrl: data.viewerUser.subscribedChannels.first
                                  .channel.icon as String,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) {
                                print(error);
                                return Assets.defaultChannelIcon.svg();
                              },
                            ),
                    ),
                    title: Text(
                        data.viewerUser.subscribedChannels.first.channel.name),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        '${Strings.SUBSCRIPTION_START_DATE}: $_DUMMY_START_SUBSCRIPTION_DATE\n${Strings.CURRENT_PERIOD_END_AT_LABEL}: $_DUMMY_CURRENT_PERIOD_END_AT',
                        style: TextStyle(height: 1.3),
                      ),
                    ),
                  );
                case 16:
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    height: 1,
                    color: Colors.white24,
                  );
                case 17:
                  return Container(
                    padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      bottom: 8,
                    ),
                    child: const Text(
                      Strings.TITLE_PURCHASE_HISTORY,
                      style: TextStyle(height: 1),
                    ),
                  );
                case 18:
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    title: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              DateFormat('yyyy/MM/dd HH:mm').format(data
                                  .viewerUser
                                  .invoiceHistory
                                  .items
                                  .first
                                  .createdAt),
                              style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                fontSize: 12,
                                height: 1,
                              ),
                            ),
                          ),
                          Text(
                              data.viewerUser.invoiceHistory.items.first.label),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      '¥6,600 月額',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  );
                // return ListTileNormal(
                //   title: Strings.PLACE_LABEL,
                //   text: _DUMMY_USER_COUNTRY,
                //   subText: _DUMMY_USER_PREFECTURE,
                // );
                default:
                  return const SizedBox();
              }
            },
            itemCount: 20,
          );
        },
      );
}
