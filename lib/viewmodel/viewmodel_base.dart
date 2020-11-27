import 'package:flutter/cupertino.dart';

abstract class ViewModelBase {

  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  void onDispose() => _isDisposed = true;

  @protected
  Future<void> setUpData();
}