// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _UpdateUserRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleTypeEnumMap, json['role']),
    );

Map<String, dynamic> _$UpdateUserRequestToJson(_UpdateUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'role': _$RoleTypeEnumMap[instance.role]!,
    };

const _$RoleTypeEnumMap = {
  RoleType.ROLE_ADMIN: 'ROLE_ADMIN',
  RoleType.USER: 'USER',
};
