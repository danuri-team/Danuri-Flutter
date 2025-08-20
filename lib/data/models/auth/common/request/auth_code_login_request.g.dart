// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_code_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthCodeLoginRequest _$AuthCodeLoginRequestFromJson(
        Map<String, dynamic> json) =>
    AuthCodeLoginRequest(
      phone: json['phone'] as String,
      authCode: json['auth_code'] as String,
    );

Map<String, dynamic> _$AuthCodeLoginRequestToJson(
        AuthCodeLoginRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'auth_code': instance.authCode,
    };
