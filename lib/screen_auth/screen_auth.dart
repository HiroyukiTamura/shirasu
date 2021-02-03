import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'screen_auth.g.dart';

final _viewModelProvider = StateNotifierProvider.autoDispose<ViewModelAuth>(
    (ref) => ViewModelAuth(ref.read));

const _kUserAgent = 'USER_AGENT';

@hwidget
Widget screenAuth() {
  useProvider(_viewModelProvider);
  return SafeArea(
    child: WebviewScaffold(
      appBar: AppBar(
        title: const Text(Strings.APP_BAR_LOGIN),
      ),
      scrollBar: false,
      allowFileURLs: false,
      withJavascript: true,
      withLocalStorage: true,
      clearCache: false,
      clearCookies: false,
      withLocalUrl: false,
      url: UrlUtil.URL_HOME,
      userAgent: _kUserAgent,
      appCacheEnabled: true,
      withZoom: false,
    ),
  );
}
