import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:riverpod/src/framework.dart';
import 'package:synchronized/synchronized.dart';

part 'viewmodel_auth.freezed.dart';

class ViewModelAuth extends ViewModelBase<AuthModel> {
  ViewModelAuth(this._ref) : super(AuthModel.initial());

  final AutoDisposeProviderReference _ref;
  final _hiveClient = HiveAuthClient.instance();
  final _lock = Lock();
  bool _initialLoad = false;
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
        (url) async => _lock.synchronized(() async => _onUrlChanged(url)),
      )
      ..onHttpError.listen((e) {
        // todo log error
      })
      ..onStateChanged.listen((viewState) async => _onStateChanged(viewState));

    await _plugin.hide();
  }

  @override
  void dispose() {
    super.dispose();
    _plugin.dispose();
    _cancelable?.cancel();
  }

  @override
  set state(AuthModel value) {
    if (!state.isFinishLoading && value.isFinishLoading && _initialLoad)
      _showWebView();

    super.state = value;
  }

  Future<void> _onStateChanged(WebViewStateChanged viewState) async {
    if (viewState.type == WebViewState.finishLoad &&
        viewState.url == UrlUtil.URL_HOME) {
      _initialLoad = true;
      await _plugin.evalJavascript(_jsClickLoginBtn);
      await _plugin.show();
    }
  }

  Future<void> _onUrlChanged(String url) async {
    // todo synchronized
    _updateUrl(url);

    // url except home page
    if (url != UrlUtil.URL_HOME && url.startsWith(UrlUtil.URL_HOME)) {
      final storage = await _plugin.evalJavascript(_jsLocalStorageGetter);
      if (storage.isEmpty) return;

      try {
        final authData =
            AuthData.fromJson(jsonDecode(storage) as Map<String, dynamic>);
        await _hiveClient.putAuthData(authData);
        _success = true;
      } catch (e) {
        debugPrint(e.toString());
      }

      if (!_success)
        // try unescape string and decode json
        try {
          final authData = AuthData.fromJson(
              jsonDecode(jsonDecode(storage) as String)
                  as Map<String, dynamic>);
          await _hiveClient.putAuthData(authData);
          _success = true;
        } catch (e) {
          debugPrint(e.toString());
          //todo handle error
        }

      final delegate = _ref.read(appRouterProvider).delegate;
      if (_success)
        await _ref
            .read(appRouterProvider)
            .delegate
            .popRoute(); // todo check current page is AuthScreen
      else if (_hiveClient.maybeExpired && url == UrlUtil.URL_DASHBOARD) {
        // todo improve logic
        await _plugin.clearCache();
        await _plugin.cleanCookies();
        await delegate.pushPage(const GlobalRoutePath.error());
      }
    }
  }

  void _updateUrl(String url) => setState(state.copyWith(lastUrl: url));

  Future<void> _showWebView() async {
    await _cancelable?.cancel();
    _cancelable = CancelableOperation.fromFuture(
      _plugin.show(),
    );
  }
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
