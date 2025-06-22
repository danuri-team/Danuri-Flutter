// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      companyId: json['companyId'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      sex: json['sex'] as String,
      age: json['age'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'name': instance.name,
      'phone': instance.phone,
      'sex': instance.sex,
      'age': instance.age,
    };
