// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_with_attr_variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserWithAttrVariable _$_$_UpdateUserWithAttrVariableFromJson(
    Map<String, dynamic> json) {
  return _$_UpdateUserWithAttrVariable(
    input: json['input'] == null
        ? null
        : Input.fromJson(json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UpdateUserWithAttrVariableToJson(
        _$_UpdateUserWithAttrVariable instance) =>
    <String, dynamic>{
      'input': instance.input,
    };

_$_Input _$_$_InputFromJson(Map<String, dynamic> json) {
  return _$_Input(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    attr: json['attr'] == null
        ? null
        : Attr.fromJson(json['attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InputToJson(_$_Input instance) => <String, dynamic>{
      'user': instance.user,
      'attr': instance.attr,
    };

_$_Attr _$_$_AttrFromJson(Map<String, dynamic> json) {
  return _$_Attr(
    id: json['id'] as String,
    birthDate: json['birthDate'] == null
        ? null
        : DateTime.parse(json['birthDate'] as String),
    job: json['job'] as String,
    country: json['country'] as String,
    prefecture: json['prefecture'] as int,
  );
}

Map<String, dynamic> _$_$_AttrToJson(_$_Attr instance) => <String, dynamic>{
      'id': instance.id,
      'birthDate': instance.birthDate?.toIso8601String(),
      'job': instance.job,
      'country': instance.country,
      'prefecture': instance.prefecture,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
    };
