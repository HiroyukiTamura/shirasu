import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/api_client.dart';
import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:state_notifier/state_notifier.dart';

import '../main.dart';

abstract class ViewModelBase<T> extends StateNotifier<T> with StateTrySetter<T>, ViewModelInitListener, AppRouterLocator {

  ViewModelBase(this._reader, T state) : super(state) {
    initialize();
  }

  final Reader _reader;

  @override
  T Function<T>(RootProvider<Object, T> provider) get reader => _reader;

  @override
  @protected
  Future<void> initialize() async {}
}

/// use only in case that we can't use [ViewModelBase]
abstract class ViewModelBaseChangeNotifier extends ChangeNotifier with ViewModelInitListener, AppRouterLocator {

  ViewModelBaseChangeNotifier(this.reader): super() {
    initialize();
  }

  @override
  final Reader reader;

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

//todo rename
mixin AppRouterLocator {

  @protected
  Reader get reader;

  @protected
  void pushAuthExpireScreen() => reader(pAppRouterDelegate).pushPage(const GlobalRoutePath.error(true));

  @protected
  ApiClient get apiClient => reader(kPrvApiClient);

  @protected
  DioClient get dioClient => reader(kPrvDioClient);

  @protected
  HiveAuthRepository get hiveAuthRepository => reader(kPrvHiveAuthRepository);
}