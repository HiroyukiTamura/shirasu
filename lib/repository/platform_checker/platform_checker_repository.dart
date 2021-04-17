import 'package:shirasu/repository/platform_checker/platform_check_no_web.dart'
    if (dart.library.html) 'package:shirasu/repository/platform_checker/platform_check_web.dart';

abstract class PlatformCheckerRepository {
  factory PlatformCheckerRepository.create() => getPlatformChecker();

  bool get isIos;

  bool get isIosPwa;
}
