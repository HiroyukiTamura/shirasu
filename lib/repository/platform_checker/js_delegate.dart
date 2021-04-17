@JS()
library js_delegate;

import 'package:js/js.dart';
import 'package:shirasu/repository/platform_checker/platform_checker_repository.dart';

/// must access from [PlatformCheckerRepository.isIosPwa]
@JS('isIosPwa')
@Deprecated('must access from [PlatformChecker.isIosPwa]')
external dynamic isIosPwaNative();
