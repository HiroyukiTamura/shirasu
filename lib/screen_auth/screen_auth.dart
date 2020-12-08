import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:shirasu/viewmodel/viewmodel_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _viewModelProvider =
    StateNotifierProvider<ViewModelAuth>((_) => ViewModelAuth());

class ScreenAuth extends StatefulHookWidget {

  const ScreenAuth({Key key}): super(key: key);

  @override
  _ScreenAuthState createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {
  FlutterWebviewPlugin _plugin;

  static const _JS_STR =
      'document.getElementsByClassName("main__login-button")[0].click()';

  @override
  void initState() {
    super.initState();

    _plugin = FlutterWebviewPlugin()
      ..onUrlChanged.listen((url) {
        context.read(_viewModelProvider).updateUrl(url);

        if (!url.startsWith(UrlUtil.URL_HOME) &&
            !url.startsWith(UrlUtil.URL_AUTH_BASE) &&
            !url.startsWith(UrlUtil.URL_AUTH_GOOGLE_BASE)) {
          //todo handle error
        }
      })
      ..onHttpError.listen((e) {
        // todo handle error
      })
      ..onProgressChanged.listen((progress) =>
          context.read(_viewModelProvider).updateProgress(progress));
  }

  @override
  void dispose() {
    super.dispose();
    _plugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allowUserPoint = useProvider(_viewModelProvider.state.select((state) => state.allowUserPoint));
    return IgnorePointer(
        ignoring: !allowUserPoint,
        child: const WebviewScaffold(
          withJavascript: true,
          withLocalStorage: true,
          clearCache: false,
          clearCookies: false,
          initialChild: CenterCircleProgress(),
          withLocalUrl: false,
          url: UrlUtil.URL_HOME,
        ),
      );
  }
}
