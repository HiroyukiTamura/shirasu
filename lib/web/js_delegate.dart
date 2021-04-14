@JS()
library js_delegate;

import 'package:js/js.dart';
import 'package:shirasu/web/web_platform_check.dart';

/// must access from [WebPlatformCheck.isIosPwa]
@JS('window.navigator.standalone')
external dynamic isIosPwaNative();
