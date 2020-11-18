import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_main/page_setting/email_status_label.dart';
import 'package:shirasu/screen_main/page_setting/external_auth.dart';
import 'package:shirasu/screen_main/page_setting/heading.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_normal.dart';
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
              return ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, i) {
                  switch (i) {
                    case 0:
                      return const Heading(Strings.TITLE_USER_INFO);
                    case 1:
                      return UserNameAndIcon(
                        iconUrl: _DUMMY_USER_ICON_URL,
                        userName: data.viewerUser.name,
                      );
                    case 2:
                      return ListTileNormal(
                        title: Strings.FULL_NAME_LABEL,
                        text: _DUMMY_FAMILY_NAME,
                        subText: _DUMMY_FIRST_NAME,
                        trailing: Text(
                          Strings.FULL_NAME_NOTICE,
                          style: TextStyle(
                            height: 1.3,
                            color: Styles.colorTextSub,
                          ),
                        ),
                      );
                    case 3:
                      return ListTileNormal(
                        title: Strings.FULL_NAME_READABLE_LABEL,
                        text: _DUMMY_FAMILY_READABLE_NAME,
                        subText: _DUMMY_FIRST_READABLE_NAME,
                      );
                    case 4:
                      return ListTileNormal(
                        title: Strings.MAIL_ADDRESS,
                        text: _DUMMY_USER_EMAIL,
                        trailing: EmailStatusLabel(isVerified: false),
                      );
                    case 5:
                      return const ExternalAuth();
                    default:
                      return const SizedBox();
                  }
                },
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  switch (index) {
                    default:
                      return const SizedBox(height: 24);
                  }
                },
              );
            },
          );
}
