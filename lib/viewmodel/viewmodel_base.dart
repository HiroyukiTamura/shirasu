import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

abstract class ViewModelBase<T> extends StateNotifier<T> {

  ViewModelBase(T state) : super(state);

  @protected
  Future<void> initialize() async {}

  @protected
  void setState(T state) {
    if (mounted)
      this.state = state;
  }
}