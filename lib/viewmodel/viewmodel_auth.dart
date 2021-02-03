import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/local_json_client.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:synchronized/synchronized.dart';

part 'viewmodel_auth.freezed.dart';

class ViewModelAuth extends ViewModelBase<AuthModel> {
  ViewModelAuth(Reader reader) : super(reader, AuthModel.initial());

  final _hiveClient = HiveAuthClient.instance();
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
        (url) async => _lock.synchronized(() async => _onUrlChanged(url)),
      )
      ..onHttpError.listen((e) {
        // todo log error
      })
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

  Future<void> _onUrlChanged(String url) async {
    setState(state.copyWith(lastUrl: url));

    if (_success)
      return;

    // url except home page
    if (url != UrlUtil.URL_HOME && url.startsWith(UrlUtil.URL_HOME)) {
      final storage = await _plugin.evalJavascript(_jsLocalStorageGetter);
      if (storage.isEmpty || storage == '\"\"') return;

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

      if (!mounted)
        return;

      final delegate = reader(pAppRouterDelegate);
      if (_success)
        await delegate.popRoute();
      else if (_hiveClient.maybeExpired && url == UrlUtil.URL_DASHBOARD) {
        // todo improve logic
        await _plugin.clearCache();
        await _plugin.cleanCookies();
        pushAuthExpireScreen();
      }
      await _plugin.close();
    }
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
