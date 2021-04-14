import 'package:flutter/foundation.dart';
import 'package:shirasu/util.dart';

abstract class OnWeb {
  @mustCallSuper // todo this annotation doesn't work ...
  OnWeb() {
    Util.require(kIsWeb);
  }
}