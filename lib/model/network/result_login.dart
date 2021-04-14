import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_login.freezed.dart';

part 'result_login.g.dart';

//todo rename
@freezed
abstract class LoginResult with _$LoginResult {
  const factory LoginResult({
    @required @JsonKey(name: 'access_token') String accessToken,
    @required @JsonKey(name: 'id_token') String idToken,
    @required String scope,
    @required @JsonKey(name: 'expires_in') int expiresIn,
    @required @JsonKey(name: 'token_type') String tokenType,
    @required @JsonKey(name: 'refresh_token') String refreshToken,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}

@freezed
abstract class LoginData with _$LoginData {
  const factory LoginData({
    @required String username,
    @required String password,
  }) = _LoginData;
}
