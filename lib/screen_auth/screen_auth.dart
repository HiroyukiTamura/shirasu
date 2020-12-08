import 'package:flutter/cupertino.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ScreenAuth extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return WebView(initialUrl: UrlUtil.URL_HOME, );
  }
}