// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminInfoResponse _$AdminInfoResponseFromJson(Map<String, dynamic> json) =>
    AdminInfoResponse(
      id: json['id'] as String,
      companyId: json['company_id'] as String,
      companyName: json['company_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleTypeEnumMap, json['role']),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$AdminInfoResponseToJson(AdminInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'company_name': instance.companyName,
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
