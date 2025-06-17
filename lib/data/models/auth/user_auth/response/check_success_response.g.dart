// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckSuccessResponse _$CheckSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    _CheckSuccessResponse(
      isSuccess: json['isSuccess'] as bool,
      massage: json['massage'] as String,
    );

Map<String, dynamic> _$CheckSuccessResponseToJson(
        _CheckSuccessResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'massage': instance.massage,
    };
