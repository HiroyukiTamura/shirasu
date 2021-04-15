import 'package:flutter/foundation.dart';
import 'package:shirasu/platform_checker/js_delegate.dart';
import 'package:shirasu/platform_checker/platform_checker.dart';
import 'package:universal_html/html.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/platform_checker/platform_check_no_web.dart' as stub;

/// shared with [stub.getPlatformChecker]
PlatformChecker getPlatformChecker() => _PlatformCheckWeb();

class _PlatformCheckWeb implements PlatformChecker {
  _PlatformCheckWeb() {
    Util.require(kIsWeb);
  }

  @override
  bool get isIos =>
      ['iPad', 'iPhone', 'iPod'].contains(window.navigator.platform);

  @override
  bool get isIosPwa =>
      // ignore: deprecated_member_use_from_same_package
      isIosPwaNative() == true;
}
