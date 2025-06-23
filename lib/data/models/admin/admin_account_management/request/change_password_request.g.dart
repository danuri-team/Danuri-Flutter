// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _ChangePasswordRequest(
      current_password: json['current_password'] as String,
      new_password: json['new_password'] as String,
      confirm_password: json['confirm_password'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestToJson(
        _ChangePasswordRequest instance) =>
    <String, dynamic>{
      'current_password': instance.current_password,
      'new_password': instance.new_password,
      'confirm_password': instance.confirm_password,
    };
