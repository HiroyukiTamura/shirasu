import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

abstract class ViewModelBase<T> extends StateNotifier<T> with StateTrySetter<T>, ViewModelInitListener {

  ViewModelBase(T state) : super(state) {
    initialize();
  }

  @override
  @protected
  Future<void> initialize() async {}
}

/// use only in case that we can't use [ViewModelBase]
abstract class ViewModelBaseChangeNotifier extends ChangeNotifier with ViewModelInitListener {

  ViewModelBaseChangeNotifier(): super() {
    initialize();
  }

  bool _isMounted = true;

  bool get isMounted => _isMounted;

  @override
  @protected
  Future<void> initialize() async {}

  @override
  void dispose() {
    super.dispose();
    _isMounted = false;
  }
}

mixin ViewModelInitListener {

  @protected
  Future<void> initialize() async {}
}

mixin StateTrySetter<T> on StateNotifier<T> {
  /// todo rename to trySetState?
  @protected
  void setState(T state) {
    if (mounted)
      this.state = state;
  }
}