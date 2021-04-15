import 'package:shirasu/platform_checker/platform_checker.dart';
import 'package:shirasu/platform_checker/platform_checker_stub.dart' as stub;

/// override [stub.getPlatformChecker]
PlatformChecker get getPlatformChecker => _PlatformCheckNoWeb();

class _PlatformCheckNoWeb implements PlatformChecker {
  @override
  bool get isIos => throw UnsupportedError('only for web');

  @override
  bool get isIosPwa => throw UnsupportedError('only for web');
}