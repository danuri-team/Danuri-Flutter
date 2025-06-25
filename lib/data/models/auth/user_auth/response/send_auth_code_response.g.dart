// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_auth_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendAuthCodeResponse _$SendAuthCodeResponseFromJson(
        Map<String, dynamic> json) =>
    SendAuthCodeResponse(
      isSuccess: json['is_success'] as bool,
      massage: json['massage'] as String,
    );

Map<String, dynamic> _$SendAuthCodeResponseToJson(
        SendAuthCodeResponse instance) =>
    <String, dynamic>{
      'is_success': instance.isSuccess,
      'massage': instance.massage,
    };
