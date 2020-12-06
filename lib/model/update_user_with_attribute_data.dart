import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';

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
abstract class UserWithAttribute with _$UserWithAttribute {
  @Implements(BaseUserWithAttribute)
  const factory UserWithAttribute({
    @required User user,
    @required UserAttribute attr,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "UserWithAttribute"')
        String typename,
  }) = _UserWithAttribute;

  factory UserWithAttribute.fromJson(Map<String, dynamic> json) =>
      _$UserWithAttributeFromJson(json);
}

@freezed
abstract class UserAttribute with _$UserAttribute {
  @Implements(BaseUserAttribute)
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
    @Assert('typename == "UserAttribute"')
        String typename,
  }) = _UserAttribute;

  factory UserAttribute.fromJson(Map<String, dynamic> json) =>
      _$UserAttributeFromJson(json);
}

@freezed
abstract class User with _$User {
  @Implements(BaseUser)
  const factory User({
    @required String id,
    @required String name,
    String icon,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required List<String> roles,
    // @required Comments tenants, not implemented yet
    // @required Comments comments, not implemented yet
    // @required Comments reviews, not implemented yet
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "User"')
        String typename,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
