// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_admin_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAdminInfoRequest _$UpdateAdminInfoRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateAdminInfoRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UpdateAdminInfoRequestToJson(
        UpdateAdminInfoRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
