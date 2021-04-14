import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_data_query.freezed.dart';
part 'auth_user_data_query.g.dart';

@freezed
abstract class AuthUserDataQuery with _$AuthUserDataQuery {
  const factory AuthUserDataQuery({
    @required String state,
    @required String code,
  }) = _AuthUserDataQuery;

  factory AuthUserDataQuery.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDataQueryFromJson(json);
}

/// @see https://github.com/auth0/auth0-spa-js/blob/5bf5292366e19d7a72b001f831b344b05cfcbaa5/src/errors.ts#L11
@freezed
abstract class AuthUserDataQueryErr with _$AuthUserDataQueryErr {
  const factory AuthUserDataQueryErr({
    String error,
    @JsonKey(name: 'error_description') String errorDescription,
  }) = _AuthUserDataQueryErr;

  factory AuthUserDataQueryErr.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDataQueryErrFromJson(json);
}
