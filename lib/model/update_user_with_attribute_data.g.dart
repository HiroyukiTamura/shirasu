// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_with_attribute_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserWithAttributeData _$_$_UserWithAttributeDataFromJson(
    Map<String, dynamic> json) {
  return _$_UserWithAttributeData(
    updateUserWithAttribute: json['updateUserWithAttribute'] == null
        ? null
        : UserWithAttribute.fromJson(
            json['updateUserWithAttribute'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserWithAttributeDataToJson(
        _$_UserWithAttributeData instance) =>
    <String, dynamic>{
      'updateUserWithAttribute': instance.updateUserWithAttribute,
    };

_$_UserWithAttribute _$_$_UserWithAttributeFromJson(Map<String, dynamic> json) {
  return _$_UserWithAttribute(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    attr: json['attr'] == null
        ? null
        : UserAttribute.fromJson(json['attr'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_UserWithAttributeToJson(
        _$_UserWithAttribute instance) =>
    <String, dynamic>{
      'user': instance.user,
      'attr': instance.attr,
      '__typename': instance.typename,
    };

_$_UserAttribute _$_$_UserAttributeFromJson(Map<String, dynamic> json) {
  return _$_UserAttribute(
    id: json['id'] as String,
    email: json['email'] as String,
    birthDate: json['birthDate'] == null
        ? null
        : DateTime.parse(json['birthDate'] as String),
    job: json['job'] as String,
    country: json['country'] as String,
    prefecture: json['prefecture'] as int,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_UserAttributeToJson(_$_UserAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'birthDate': instance.birthDate?.toIso8601String(),
      'job': instance.job,
      'country': instance.country,
      'prefecture': instance.prefecture,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__typename': instance.typename,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    rawRoles: (json['roles'] as List)?.map((e) => e as String)?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'roles': instance.rawRoles,
      '__typename': instance.typename,
    };
