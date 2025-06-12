// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_auth_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendAuthCodeResponse _$SendAuthCodeResponseFromJson(
        Map<String, dynamic> json) =>
    _SendAuthCodeResponse(
      isSuccess: json['isSuccess'] as bool,
      massage: json['massage'] as String,
    );

Map<String, dynamic> _$SendAuthCodeResponseToJson(
        _SendAuthCodeResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'massage': instance.massage,
    };
