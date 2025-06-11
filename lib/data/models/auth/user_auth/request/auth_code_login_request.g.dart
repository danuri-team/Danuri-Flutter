// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_code_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthCodeLoginRequest _$AuthCodeLoginRequestFromJson(
        Map<String, dynamic> json) =>
    _AuthCodeLoginRequest(
      phone: json['phone'] as String,
      authCode: json['authCode'] as String,
    );

Map<String, dynamic> _$AuthCodeLoginRequestToJson(
        _AuthCodeLoginRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'authCode': instance.authCode,
    };
