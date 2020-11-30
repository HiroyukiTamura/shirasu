import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/riverpod.dart';

mixin DisposeState<T> {
  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  void onDispose() => _isDisposed = true;
}

abstract class DisposableValueNotifier<T> extends ValueNotifier<T>
    with DisposeState<T> {
  DisposableValueNotifier(T value) : super(value);

  @override
  set value(T newValue) {
    if (!isDisposed) super.value = newValue;
  }
}

abstract class DisposableChangeNotifier extends ChangeNotifier
    with DisposeState {
  @protected
  void notifyIfNotDisposed(void Function() preNotify) {
    if (!isDisposed) {
      preNotify();
      notifyListeners();
    }
  }
}

mixin ViewModelBase {
  /// this method must called only in [AfterLayoutMixin.afterFirstLayout]
  @protected
  Future<void> initialize();
}

extension Ext on ProviderReference {
  void listenDispose(DisposeState state) => onDispose(() => state.onDispose());
}
