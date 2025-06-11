// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) =>
    _CreateUserRequest(
      companyId: json['companyId'] as String,
      name: json['name'] as String,
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: json['age'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$CreateUserRequestToJson(_CreateUserRequest instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'name': instance.name,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': instance.age,
      'phone': instance.phone,
    };

const _$SexTypeEnumMap = {
  SexType.MALE: 'MALE',
  SexType.FEMALE: 'FEMALE',
};
