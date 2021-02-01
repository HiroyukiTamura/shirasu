import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/di/local_json_client.dart';

part 'update_user_with_attr_variable.freezed.dart';

part 'update_user_with_attr_variable.g.dart';

@freezed
abstract class UpdateUserWithAttrVariable with _$UpdateUserWithAttrVariable {
  @protected
  const factory UpdateUserWithAttrVariable({
    @required Input input,
  }) = _UpdateUserWithAttrVariable;

  factory UpdateUserWithAttrVariable.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserWithAttrVariableFromJson(json);

  factory UpdateUserWithAttrVariable.build({
    @required String userId,
    @required DateTime birthDate,
    @required String job,
    @required String country,
    @required String prefecture,
  }) {
    int prefectureFixed = LocalJsonClient.isJapan(country) ? int.parse(prefecture) : 0;
    String jobFixed = job.startsWith('job') ? job.substring(3) : job;
    return UpdateUserWithAttrVariable(
        input: Input(
          user: User(id: userId),
          attr: Attr(
            id: userId,
            birthDate: birthDate.toUtc(),
            job: jobFixed,
            country: country.toUpperCase(),
            prefecture: prefectureFixed,
          ),
        ),
      );
  }
}

@freezed
abstract class Input with _$Input {
  const factory Input({
    @required User user,
    @required Attr attr,
  }) = _Input;

  factory Input.fromJson(Map<String, dynamic> json) => _$InputFromJson(json);
}

@freezed
abstract class Attr with _$Attr {
  const factory Attr({
    @required String id,
    @required DateTime birthDate,
    @required String job,
    @required String country,
    @required int prefecture,
  }) = _Attr;

  factory Attr.fromJson(Map<String, dynamic> json) => _$AttrFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
