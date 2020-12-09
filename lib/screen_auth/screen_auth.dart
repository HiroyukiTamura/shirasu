import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/viewmodel_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _viewModelProvider =
    StateNotifierProvider.autoDispose<ViewModelAuth>((ref) => ViewModelAuth());

class ScreenAuth extends StatefulHookWidget {
  const ScreenAuth({Key key}) : super(key: key);

  @override
  _ScreenAuthState createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {

  static const _USER_AGENT = 'USER_AGENT';

  @override
  Widget build(BuildContext context) {
    useProvider(_viewModelProvider);
    return SafeArea(
      child: WebviewScaffold(
        appBar: AppBar(
          title: const Text(Strings.APP_BAR_LOGIN),
        ),
        allowFileURLs: false,
        withJavascript: true,
        withLocalStorage: true,
        clearCache: false,
        clearCookies: false,
        hidden: true,
        withLocalUrl: false,
        url: UrlUtil.URL_HOME,
        userAgent: _USER_AGENT,
        appCacheEnabled: true,
      ),
    );
  }
}
