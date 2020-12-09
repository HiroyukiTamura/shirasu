import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_auth.freezed.dart';

class ViewModelAuth extends ViewModelBase<AuthModel> {
  ViewModelAuth() : super(AuthModel.initial()) {
    initialize();
  }

  CancelableOperation<Null> _cancelable;

  FlutterWebviewPlugin _plugin;

  @override
  Future<void> initialize() async {

    final jsClickLoginBtn = await LocalJsonClient.instance().jsClickLoginBtn;
    final jsLocalStorageGetter = await LocalJsonClient.instance().jsLocalStorageGetter;

    _plugin = FlutterWebviewPlugin()
      ..onUrlChanged.listen((url) async {
        _updateUrl(url);

        if (!url.startsWith(UrlUtil.URL_HOME) &&
            !url.startsWith(UrlUtil.URL_AUTH_BASE) &&
            !url.startsWith(UrlUtil.URL_AUTH_GOOGLE_BASE)) {
          //todo handle error
        }

        // url except home page
        if (url != UrlUtil.URL_HOME && url.startsWith(UrlUtil.URL_HOME)) {
          final storage = await _plugin.evalJavascript(jsLocalStorageGetter);
          if (storage.isEmpty)
            return;

          bool success = false;
          try {
            final authData = AuthData.fromJson(jsonDecode(storage) as Map<String, dynamic>);
            await HiveAuthClient.instance().putAuthData(authData);
            success = true;
          } catch (e) {
            debugPrint(e.toString());
          }
          if (!success) {
            // try unescape string and decode json
            try {
              final authData = AuthData.fromJson(jsonDecode(jsonDecode(storage) as String) as Map<String, dynamic>);
              await HiveAuthClient.instance().putAuthData(authData);
              success = true;
            } catch (e) {
              debugPrint(e.toString());
              //todo handle error
            }
          }

          if (success) {
            debugPrint('success!!');
            // todo kill WebView
          } else {
            // todo clear cache and handle error
          }
        }
      })
      ..onHttpError.listen((e) {
        // todo handle error
      })
      ..onStateChanged.listen((viewState) async {
        if (viewState.type == WebViewState.finishLoad &&
            viewState.url == UrlUtil.URL_HOME)
          await _plugin.evalJavascript(jsClickLoginBtn);
      });

    await _plugin.hide();
  }

  void _updateUrl(String url) => setState(state.copyWith(lastUrl: url));

  @override
  void dispose() {
    super.dispose();
    _plugin.dispose();
    _cancelable?.cancel();
  }

  @override
  set state(AuthModel value) {
    if (!state.isFinishLoading && value.isFinishLoading)
      _showWebView();
    else if (state.isFinishLoading && !value.isFinishLoading)
      _hideWebView();

    super.state = value;
  }

  Future<void> _showWebView() async {
    await _cancelable?.cancel();
    _cancelable = CancelableOperation.fromFuture(
      _plugin.show(),
    );
  }

  Future<void> _hideWebView() async {
    await _cancelable?.cancel();
    _cancelable = CancelableOperation.fromFuture(
      _plugin.hide(),
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
