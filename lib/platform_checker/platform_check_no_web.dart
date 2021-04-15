import 'package:shirasu/platform_checker/platform_checker.dart';
import 'package:shirasu/platform_checker/platform_check_web.dart' as stub;

/// shared with [stub.getPlatformChecker]
PlatformChecker getPlatformChecker() => _PlatformCheckNoWeb();

class _PlatformCheckNoWeb implements PlatformChecker {
  @override
  bool get isIos => throw UnsupportedError('only for web');

  @override
  bool get isIosPwa => throw UnsupportedError('only for web');
}