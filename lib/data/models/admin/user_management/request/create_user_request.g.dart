// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) =>
    CreateUserRequest(
      companyId: json['company_id'] as String,
      name: json['name'] as String,
      sex: json['sex'] as String,
      age: json['age'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$CreateUserRequestToJson(CreateUserRequest instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'name': instance.name,
      'sex': instance.sex,
      'age': instance.age,
      'phone': instance.phone,
    };
