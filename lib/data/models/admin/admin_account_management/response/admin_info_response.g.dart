// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminInfoResponseResponse _$AdminInfoResponseResponseFromJson(
        Map<String, dynamic> json) =>
    _AdminInfoResponseResponse(
      id: json['id'] as String,
      company_id: json['company_id'] as String,
      company_name: json['company_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleTypeEnumMap, json['role']),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$AdminInfoResponseResponseToJson(
        _AdminInfoResponseResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'company_name': instance.company_name,
      'email': instance.email,
      'phone': instance.phone,
      'role': _$RoleTypeEnumMap[instance.role]!,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$RoleTypeEnumMap = {
  RoleType.ROLE_ADMIN: 'ROLE_ADMIN',
  RoleType.USER: 'USER',
};

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
