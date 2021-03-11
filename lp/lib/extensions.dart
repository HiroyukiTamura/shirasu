import 'package:flutter/cupertino.dart';

extension BuildContextX on BuildContext {
  bool get isWideScreen =>
      1024 <
      MediaQuery.of(this).size.width - MediaQuery.of(this).padding.horizontal;
}
