import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
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
  static const _DUMMY_USER_ICON_URL =
      'https://lh6.googleusercontent.com/-xARQ0foJdCA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck6e6cRIn75RY5zuSkoAIDdVcQcHA/s96-c/photo.jpg';
  static const _DUMMY_FAMILY_NAME = '山田';
  static const _DUMMY_FIRST_NAME = '太郎';
  static const _DUMMY_FAMILY_READABLE_NAME = 'やまだ';
  static const _DUMMY_FIRST_READABLE_NAME = 'たろう';
  static const _DUMMY_USER_EMAIL = 'fugahoge@gmail.com';
  static const _DUMMY_USER_JOB = 'IT関係';
  static const _DUMMY_USER_COUNTRY = '日本';
  static const _DUMMY_USER_PREFECTURE = '東京';
  final _DUMMY_BIRTH_DATE = DateTime.now();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read(_viewModelProvider).setUpData());
  }

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewModelProvider).value.when(
            preInitialized: () => const CenterCircleProgress(),
            error: () => const Text('error!'), //todo implement
            success: (data) {
              return ListView.builder(
                itemBuilder: (context, i) {
                  switch (i) {
                    case 0:
                      return const Heading(Strings.TITLE_USER_INFO);
                    case 1:
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(_DUMMY_USER_ICON_URL),
                        ),
                        title: Text(data.viewerUser.name),
                      );
                    // case 2:
                    //   return ListTile(
                    //     title: Text(Strings.FULL_NAME_LABEL),
                    //     subtitle: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text('$_DUMMY_FAMILY_NAME  $_DUMMY_FIRST_NAME'),
                    //         SizedBox(height: 4),
                    //         Text(
                    //           Strings.FULL_NAME_NOTICE,
                    //           style: TextStyle(height: 1.3),
                    //         )
                    //       ],
                    //     ),
                    //   );
                    case 3:
                      return ListTileUserName(
                        firstName: _DUMMY_FIRST_NAME,
                        firstNameReadable: _DUMMY_FIRST_READABLE_NAME,
                        familyName: _DUMMY_FAMILY_NAME,
                        familyNameReadable: _DUMMY_FAMILY_READABLE_NAME,
                      );
                    case 4:
                      return ListTileNormal(
                        title: Strings.MAIL_ADDRESS,
                        text: _DUMMY_USER_EMAIL,
                        extra: Row(
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
                        ),
                        height: 108,
                      );
                    case 6:
                      return ListTileNormal(
                        title: Strings.BIRTH_DATE_LABEL,
                        text:
                            DateFormat('yyyy.MM.dd').format(_DUMMY_BIRTH_DATE),
                      );
                    case 7:
                      return ListTileNormal(
                        title: Strings.JOB_LABEL,
                        text: _DUMMY_USER_JOB,
                      );
                    case 8:
                      return ListTileNormal(
                        title: Strings.PLACE_LABEL,
                        text: _DUMMY_USER_COUNTRY,
                        subText: _DUMMY_USER_PREFECTURE,
                      );
                    default:
                      return const SizedBox();
                  }
                },
                itemCount: 10,
              );
            },
          );
}
