import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/screen_auth/screen_auth_scratch.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_auth_scratch.dart';
import 'package:shirasu/extension.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/viewmodel/background_task.dart';

class ViewModelAuthScratch extends ViewModelBase<ModelAuthScratch> {
  ViewModelAuthScratch(reader) : super(reader, ModelAuthScratch.initial());

  HiveAuthRepository get _hiveClient => reader(kPrvHiveAuthRepository);

  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvSnackAuthScratch);

  RoundedLoadingButtonController get _btnController =>
      reader(kPrvBtmController);

  AppRouterDelegate get _router => reader(kPrvAppRouterDelegate);

  Future<void> login({
    @required String userName,
    @required String password,
  }) async {
    if (state.loginState != const LoginState.idle()) return;

    final validEmail = updateEmailFieldLabel(userName);
    final validPw = updatePwFiledLabel(password);

    if (!validEmail || !validPw) {
      state = state.copyWith(
        loginState: const LoginState.idle(),
      );
      _btnController.stop();
      return;
    }

    _btnController.start();
    state = state.copyWith(
      loginState: const LoginState.loading(),
    );

    final result = await logger
        .guardFuture(() async => authOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              final loginResult = await dioClient.login2Shirasu(LoginData(
                username: userName,
                password: password,
              ));
              await _hiveClient.putAuthData(HiveAuthData.fromDioLogin(
                loginResult: loginResult,
              ));
            }));

    if (mounted)
      await result.when(success: (_) async {
        state = state.copyWith(
          loginState: const LoginState.success(),
        );
        _btnController.success();
        await Future.delayed(1.seconds); // wait for animation
        _router.reset();
      }, failure: (e) {
        if (e is UnauthorizedException)
          _commandSnack(const SnackMsg.loginInputInvalid());
        else if (e is NetworkDisconnectException)
          _commandSnack(const SnackMsg.networkDisconnected());
        else if (e is SynchronizationException) {
          // no op
        } else if (e is DioError && e.isTimeoutErr)
          _commandSnack(const SnackMsg.networkTimeout());
        else
          _commandSnack(const SnackMsg.unknown());

        state = state.copyWith(
          loginState: const LoginState.idle(),
        );
        _btnController.stop();
      });
  }

  void updateObscurePw() => state = state.copyWith(obscurePw: !state.obscurePw);

  bool updateEmailFieldLabel(String value) {
    final label = _toEmailErrLabel(value);
    state = state.copyWith(
      errLabelEmail: label,
    );
    return label == null;
  }

  bool updatePwFiledLabel(String value) {
    final errLabelPw = value?.isNotEmpty != false
        ? null
        : Strings.TEXT_FILED_ERR_LABEL_PW_EMPTY;
    state = state.copyWith(
      errLabelPw: errLabelPw,
    );
    return errLabelPw == null;
  }

  String _toEmailErrLabel(String value) {
    if (value?.isNotEmpty != true)
      return Strings.TEXT_FILED_ERR_LABEL_EMAIL_EMPTY;
    return EmailValidator.validate(value)
        ? null
        : Strings.TEXT_FILED_ERR_LABEL_EMAIL_INVALID;
  }

  void clearEmailFieldLabel() => state = state.copyWith(errLabelEmail: null);

  void clearPwFieldLabel() => state = state.copyWith(errLabelPw: null);

  void _commandSnack(SnackMsg snackMsg) =>
      _snackBarMsgNotifier.notifyMsg(snackMsg, false);
}
