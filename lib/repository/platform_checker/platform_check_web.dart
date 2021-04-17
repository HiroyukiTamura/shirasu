import 'package:flutter/foundation.dart';
import 'package:shirasu/repository/platform_checker/platform_checker_repository.dart';
import 'package:universal_html/html.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/repository/platform_checker/platform_check_no_web.dart' as stub;
import 'package:shirasu/repository/platform_checker/js_delegate.dart';

/// shared with [stub.getPlatformChecker]
PlatformCheckerRepository getPlatformChecker() => _PlatformCheckWeb();

class _PlatformCheckWeb implements PlatformCheckerRepository {
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
