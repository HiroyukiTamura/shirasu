import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_token_refresh.freezed.dart';
part 'result_token_refresh.g.dart';

@freezed
abstract class ResultTokenRefresh with _$ResultTokenRefresh {
  const factory ResultTokenRefresh({
    @required String accessToken,
    @required int expiresIn,
    @required String scope,
    @required String idToken,
    @required String tokenType,
  }) = _ResultTokenRefresh;

  factory ResultTokenRefresh.fromJson(Map<String, dynamic> json) =>
      _$ResultTokenRefreshFromJson(json);
}
