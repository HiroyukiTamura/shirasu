import 'package:shirasu/repository/platform_checker/platform_checker_repository.dart';
import 'package:shirasu/repository/platform_checker/platform_check_web.dart' as stub;

/// shared with [stub.getPlatformChecker]
PlatformCheckerRepository getPlatformChecker() => _PlatformCheckNoWeb();

class _PlatformCheckNoWeb implements PlatformCheckerRepository {
  @override
  bool get isIos => throw UnsupportedError('only for web');

  @override
  bool get isIosPwa => throw UnsupportedError('only for web');
}