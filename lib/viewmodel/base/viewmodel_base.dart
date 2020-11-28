import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shirasu/viewmodel/base/base_state.dart';

mixin DisposeState<T> {
  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  void onDispose() => _isDisposed = true;
}

abstract class DisposableValueNotifier<T extends BaseStateGroup> extends ValueNotifier<T>
    with DisposeState<T> {
  DisposableValueNotifier(this.handler) : super(handler.preInitialized() as T);

  final BaseStateImpl handler;

  @override
  set value(T newValue) {
    if (!isDisposed) super.value = newValue;
  }

  @protected
  Future<void> runLoader({
    @required bool runOnlyOnce,
    @required Future<BaseSuccessData> Function() trying,
  }) async {
    if (runOnlyOnce && value is StatePreInitialized)
      return;

    value = handler.loading() as T;
    try {
      final result = await trying();
      value = handler.success(result) as T;
    } on Exception catch (e) {
      debugPrint(e.toString());
      value = handler.error() as T;
    }
  }
}

abstract class DisposableChangeNotifier extends ChangeNotifier
    with DisposeState {

  DisposableChangeNotifier();

  List<BaseState> stateList;

  @protected
  void notifyIfNotDisposed(void Function() preNotify) {
    if (!isDisposed) {
      preNotify();
      notifyListeners();
    }
  }

  @protected
  Future<void> tryNotify<T extends BaseState>({
    void Function() preTrying,
    @required FutureOr<T> Function() trying,
    T Function(Exception e) onError,
    void Function(T result) postTrying,
  }) async {
    if (preTrying != null) notifyIfNotDisposed(preTrying);

    T result;
    try {
      result = await trying();
    } on Exception catch (e) {
      if (onError != null) result = onError(e);
    }

    if (postTrying != null) notifyIfNotDisposed(() => postTrying(result));
  }


  @protected
  Future<void> tryNotifyState<T extends BaseStateImpl, S extends BaseState>({
    void Function() preTrying,
    @required FutureOr<S> Function() trying,
    S Function(Exception e) onError,
    void Function(S result) postTrying,
  }) async {
    final state = stateList.firstWhere((it) => it is T) as T;
    notifyIfNotDisposed(preTrying ?? state.loading);

    S result;
    try {
      result = await trying();
    } on Exception catch (e) {
      result = onError == null ? state.error() as S: onError(e);
    }

    if (postTrying != null) notifyIfNotDisposed(() => postTrying(result));
  }
}

mixin ViewModelBase {
  @protected
  Future<void> initialize();
}
