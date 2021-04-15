@JS()
library js_delegate;

import 'package:js/js.dart';
import 'package:shirasu/platform_checker/platform_checker.dart';

/// must access from [PlatformChecker.isIosPwa]
@JS('window.navigator.standalone')
@Deprecated('must access from [PlatformChecker.isIosPwa]')
external dynamic isIosPwaNative();
