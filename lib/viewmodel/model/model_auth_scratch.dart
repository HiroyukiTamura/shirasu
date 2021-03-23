import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_auth_scratch.freezed.dart';

@freezed
abstract class ModelAuthScratch with _$ModelAuthScratch {
  @protected
  const factory ModelAuthScratch({
    @required LoginState loginState,
    @required bool obscurePw,
    String errLabelEmail,
    String errLabelPw,
  }) = _ModelAuthScratch;

  factory ModelAuthScratch.initial() => const ModelAuthScratch(
        loginState: LoginState.idle(),
        obscurePw: true,
      );
}

/// not has error state. use idle.
@freezed
abstract class LoginState with _$LoginState {

  const factory LoginState.idle() = _Idle;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.success() = _Success;
}
