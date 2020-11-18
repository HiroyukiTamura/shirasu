import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
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
  static const double _ICON_SIZE = 64;

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
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, i) {
                  switch (i) {
                    case 0:
                      return const _Title(Strings.TITLE_USER_INFO);
                    case 1:
                      return _UserNameAndIcon(
                        iconUrl: _DUMMY_USER_ICON_URL,
                        userName: data.viewerUser.name,
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

class _Title extends StatelessWidget {
  const _Title(this.text, {Key key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
  );
}

class _UserNameAndIcon extends StatelessWidget {
  const _UserNameAndIcon({
    Key key,
    @required this.iconUrl,
    @required this.userName,
  }) : super(key: key);

  final String iconUrl;
  final String userName;
  static const double _HEIGHT = 60;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: _HEIGHT,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: iconUrl,
              width: _HEIGHT,
              height: _HEIGHT,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) {
                print(error);
                return Container(); //todo show default user image
              },
            ),
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.NAME_LABEL,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                Text(
                  userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
