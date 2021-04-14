import 'package:shirasu/web/js_delegate.dart';
import 'package:shirasu/web/on_web.dart';
import 'package:universal_html/html.dart';

class WebPlatformCheck extends OnWeb {
  WebPlatformCheck() : super();

  bool get isIos =>
      ['iPad', 'iPhone', 'iPod'].contains(window.navigator.platform);

  bool get isIosPwa =>
      isIosPwaNative() == true;
}
