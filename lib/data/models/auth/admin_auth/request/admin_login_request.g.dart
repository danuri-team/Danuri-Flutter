// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminLoginRequest _$AdminLoginRequestFromJson(Map<String, dynamic> json) =>
    _AdminLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AdminLoginRequestToJson(_AdminLoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
