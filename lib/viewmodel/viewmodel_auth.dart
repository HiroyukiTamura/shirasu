import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart' hide Result;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/local_json_client.dart';
import 'package:shirasu/repository/logger_repository.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:synchronized/synchronized.dart';

part 'viewmodel_auth.freezed.dart';

class ViewModelAuth extends ViewModelBase<AuthModel> {
  ViewModelAuth(Reader reader) : super(reader, AuthModel.initial());

  HiveAuthRepository get _hiveClient => reader(kPrvHiveAuthRepository);
  final _lock = Lock();
  bool _success = false;
  String _jsClickLoginBtn;
  String _jsLocalStorageGetter;

  CancelableOperation<Null> _cancelable;

  FlutterWebviewPlugin _plugin;

  @override
  Future<void> initialize() async {
    _jsClickLoginBtn = await LocalJsonClient.instance().jsClickLoginBtn;
    _jsLocalStorageGetter =
        await LocalJsonClient.instance().jsLocalStorageGetter;

    _plugin = FlutterWebviewPlugin()
      ..onUrlChanged.listen(
        (url) async => _onUrlChanged(url),
      )
      ..onHttpError.listen((e) => logger.e(e, null))
      ..onStateChanged.listen((viewState) async => _onStateChanged(viewState));
  }

  @override
  void dispose() {
    super.dispose();
    _plugin.dispose();
    _cancelable?.cancel();
  }

  Future<void> _onStateChanged(WebViewStateChanged viewState) async {
    debugPrint('${viewState.url}, ${viewState.type}');
    if (viewState.type == WebViewState.finishLoad &&
        viewState.url == UrlUtil.URL_HOME)
      await _plugin.evalJavascript(_jsClickLoginBtn);
  }

  //todo debug
  Future<void> _onUrlChanged(String url) async => _lock.synchronized(() async {
        if (!mounted) return;
        trySet(state.copyWith(lastUrl: url));

        if (_success) return;

        if (url == UrlUtil.URL_HOME || !url.startsWith(UrlUtil.URL_HOME))
          return;

        final storage = await _plugin.evalJavascript(_jsLocalStorageGetter);
        if (storage.isEmpty || storage == '\"\"') return;

        // try unescape string and decode json
        final result = await logger.guardFuture(() async => AuthData.fromJson(
            jsonDecode(jsonDecode(storage) as String) as Map<String, dynamic>));

        if (mounted)
          await result.when(
            success: (data) async {
              await _hiveClient.putAuthData(data);
              if (mounted) return;
              _success = true;
              reader(kPrvAppRouterDelegate).reset();
              await _plugin.close();
            },
            failure: (e) async => _hiveClient.clearAuthData(),
          );
      });
}

@freezed
abstract class AuthModel implements _$AuthModel {
  const factory AuthModel({
    String lastUrl,
    WebViewState viewState,
  }) = _AuthModel;

  const AuthModel._();

  factory AuthModel.initial() => const AuthModel();

  bool get isFinishLoading =>
      lastUrl != null &&
      lastUrl != UrlUtil.URL_HOME &&
      (lastUrl.startsWith(UrlUtil.URL_AUTH_BASE) &&
          viewState == WebViewState.finishLoad);

  // todo refactor
  bool get isValidUrl =>
      lastUrl == null ||
      lastUrl.startsWith(UrlUtil.URL_HOME) ||
      lastUrl.startsWith(UrlUtil.URL_AUTH_BASE) ||
      lastUrl.startsWith(UrlUtil.URL_AUTH_GOOGLE_BASE);
}
