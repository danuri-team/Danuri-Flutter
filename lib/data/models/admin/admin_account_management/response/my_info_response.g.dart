// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyInfoResponse _$MyInfoResponseFromJson(Map<String, dynamic> json) =>
    _MyInfoResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: $enumDecode(_$RoleTypeEnumMap, json['role']),
      status: json['status'] as String,
    );

Map<String, dynamic> _$MyInfoResponseToJson(_MyInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'email': instance.email,
      'phone': instance.phone,
      'role': _$RoleTypeEnumMap[instance.role]!,
      'status': instance.status,
    };

const _$RoleTypeEnumMap = {
  RoleType.ROLE_ADMIN: 'ROLE_ADMIN',
  RoleType.ROLE_DEVICE: 'ROLE_DEVICE',
  RoleType.ROLE_USER: 'ROLE_USER',
};
