// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      companyId: json['company_id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      sex: json['sex'] as String,
      age: json['age'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'name': instance.name,
      'phone': instance.phone,
      'sex': instance.sex,
      'age': instance.age,
    };
