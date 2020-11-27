import 'dart:async';

import 'package:flutter/cupertino.dart';

FutureOr<T> runCatch<T>({
  @required FutureOr<T> Function() preTry,
  @required FutureOr<T> Function() trying,
  @required T Function(Exception e) onError,
}) async {
  try {
    return await trying();
  } on Exception catch (e) {
    return onError(e);
  }
}