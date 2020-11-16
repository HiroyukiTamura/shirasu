import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_cookie_result.freezed.dart';
part 'signed_cookie_result.g.dart';

@freezed
abstract class SignedCookieResult with _$SignedCookieResult {
  const factory SignedCookieResult({
    @required bool ok,
    String url,
    DateTime signLimitAt,
    DateTime now,
  }) = _SignedCookieResult;

  factory SignedCookieResult.fromJson(Map<String, dynamic> json) =>
      _$SignedCookieResultFromJson(json);
}
