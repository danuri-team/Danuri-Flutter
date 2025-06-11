// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_admin_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecificAdminInfoResponse _$SpecificAdminInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _SpecificAdminInfoResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$SpecificAdminInfoResponseToJson(
        _SpecificAdminInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'status': instance.status,
    };
