// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_code_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthCodeLoginRequest _$AuthCodeLoginRequestFromJson(
        Map<String, dynamic> json) =>
    _AuthCodeLoginRequest(
      phone: json['phone'] as String,
      auth_code: json['auth_code'] as String,
    );

Map<String, dynamic> _$AuthCodeLoginRequestToJson(
        _AuthCodeLoginRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'auth_code': instance.auth_code,
    };
