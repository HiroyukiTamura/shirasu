import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/model/notification_msg.dart';

part 'error_msg_common.freezed.dart';

@freezed
abstract class ErrorMsgCommon with _$ErrorMsgCommon, NotificationMsg {
  const factory ErrorMsgCommon.unknown() = _ErrorMsgCommonUnknown;

  const factory ErrorMsgCommon.authExpired() = _ErrorMsgCommonAuthExpired;

  const factory ErrorMsgCommon.unAuth() = _ErrorMsgCommonUnAuth;

  const factory ErrorMsgCommon.networkTimeout() = _ErrorMsgCommonNetworkTimeout;

  const factory ErrorMsgCommon.networkDisconnected() =
      _ErrorMsgCommonNetworkDisconnected;

  const ErrorMsgCommon._();

  @override
  String get value => when(
        authExpired: () => Strings.ERR_AUTH_EXPIRED,
        networkDisconnected: () => Strings.ERR_NETWORK_DISCONNECTED,
        networkTimeout: () => Strings.ERR_NETWORK_TIMEOUT,
        unknown: () => Strings.SNACK_ERR,
        unAuth: () => Strings.ERR_UN_AUTH,
      );

  String get networkValue => maybeWhen(
    networkDisconnected: () => Strings.ERR_NETWORK_DISCONNECTED,
    networkTimeout: () => Strings.ERR_NETWORK_TIMEOUT,
    orElse: () => Strings.SNACK_ERR,
  );
}
