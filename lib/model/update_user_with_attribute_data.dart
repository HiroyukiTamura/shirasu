import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/extension.dart';

part 'update_user_with_attribute_data.freezed.dart';

part 'update_user_with_attribute_data.g.dart';

@freezed
abstract class UserWithAttributeData with _$UserWithAttributeData {
  const factory UserWithAttributeData({
    @required UserWithAttribute updateUserWithAttribute,
  }) = _UserWithAttributeData;

  factory UserWithAttributeData.fromJson(Map<String, dynamic> json) =>
      _$UserWithAttributeDataFromJson(json);
}

@freezed
abstract class UserWithAttribute with _$UserWithAttribute implements BaseUserWithAttribute {

  @Assert('typename == "UserWithAttribute"')
  const factory UserWithAttribute({
    @required UserStatic user,
    @required UserAttribute attr,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _UserWithAttribute;

  factory UserWithAttribute.fromJson(Map<String, dynamic> json) =>
      _$UserWithAttributeFromJson(json);
}

@freezed
abstract class UserAttribute with _$UserAttribute implements BaseUserAttribute {

  @Assert('typename == "UserAttribute"')
  const factory UserAttribute({
    @required String id,
    @required String email,
    @required DateTime birthDate,
    @required String job,
    @required String country,
    @required int prefecture,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _UserAttribute;

  factory UserAttribute.fromJson(Map<String, dynamic> json) =>
      _$UserAttributeFromJson(json);
}

@freezed
abstract class UserStatic with _$UserStatic implements BaseUser {

  @Assert('typename == "User"')
  const factory UserStatic({
    @required String id,
    @required String name,
    String icon,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required @JsonKey(name: 'roles') @protected List<String> rawRoles,
    // @required Comments tenants, not implemented yet
    // @required Comments comments, not implemented yet
    // @required Comments reviews, not implemented yet
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _UserStatic;

  factory UserStatic.fromJson(Map<String, dynamic> json) =>
      _$UserStaticFromJson(json);

  const UserStatic._();

  UnmodifiableListView<String> get roles => rawRoles.toUnmodifiable();
}
