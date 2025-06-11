// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_admin_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateAdminInfoRequest _$UpdateAdminInfoRequestFromJson(
        Map<String, dynamic> json) =>
    _UpdateAdminInfoRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UpdateAdminInfoRequestToJson(
        _UpdateAdminInfoRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
