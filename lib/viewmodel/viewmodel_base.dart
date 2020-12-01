import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

mixin ViewModelBase {
  /// this method must called only in [AfterLayoutMixin.afterFirstLayout]
  @protected
  Future<void> initialize();
}

mixin SafeStateSetter<T> on StateNotifier<T> {
  @protected
  void setState(T state) {
    if (mounted)
      this.state = state;
  }
}