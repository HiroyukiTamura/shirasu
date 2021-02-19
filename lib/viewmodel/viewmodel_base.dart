import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:state_notifier/state_notifier.dart';

import '../main.dart';
import 'model/error_msg_common.dart';

abstract class ViewModelBase<T> extends StateNotifier<T>
    with StateTrySetter<T>, ViewModelInitListener, AppRouterLocator {
  ViewModelBase(this._reader, T state) : super(state) {
    initialize();
  }

  final Reader _reader;

  @override
  T Function<T>(RootProvider<Object, T> provider) get reader => _reader;

  @override
  @protected
  @visibleForTesting
  Future<void> initialize() async {}
}

/// use only in case that we can't use [ViewModelBase]
abstract class ViewModelBaseChangeNotifier extends ChangeNotifier
    with ViewModelInitListener, AppRouterLocator {
  ViewModelBaseChangeNotifier(this.reader) : super() {
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
  @protected
  void trySet(T state) {
    if (mounted) this.state = state;
  }
}

//todo rename
//todo implement snackBarProvider
mixin AppRouterLocator {
  @protected
  Reader get reader;

  @protected
  void pushAuthExpireScreen() =>
      reader(kPrvAppRouterDelegate).pushPage(const GlobalRoutePath.error(true));

  @protected
  GraphQlRepository get graphQlRepository => reader(kPrvGraphqlRepository);

  @protected
  DioClient get dioClient => reader(kPrvDioClient);

  @protected
  ConnectivityRepository get connectivityRepository =>
      reader(kPrvConnectivityRepository);

  @protected
  HiveAuthRepository get hiveAuthRepository => reader(kPrvHiveAuthRepository);

  ErrorMsgCommon toErrMsg(dynamic e) {
    if (e is UnauthorizedException)
      return e.detectedByTime
          ? const ErrorMsgCommon.authExpired()
          : const ErrorMsgCommon.unAuth();
    else if (e is TimeoutException)
      return const ErrorMsgCommon.networkTimeout();
    else if (e is NetworkDisconnectException)
      return const ErrorMsgCommon.networkDisconnected();
    else
      return const ErrorMsgCommon.unknown();
  }
}
