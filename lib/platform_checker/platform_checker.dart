import 'package:shirasu/platform_checker/platform_check_no_web.dart'
if (dart.library.html)
  'package:shirasu/platform_checker/platform_checker_web.dart';

abstract class PlatformChecker {

  factory PlatformChecker.create() => getPlatformChecker;

  bool get isIos;
  bool get isIosPwa;
}