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
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: $enumDecode(_$AgeTypeEnumMap, json['age']),
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'name': instance.name,
      'phone': instance.phone,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': _$AgeTypeEnumMap[instance.age]!,
    };

const _$SexTypeEnumMap = {
  SexType.MALE: 'MALE',
  SexType.FEMALE: 'FEMALE',
};

const _$AgeTypeEnumMap = {
  AgeType.ELEMENTARY: 'ELEMENTARY',
  AgeType.MIDDLE: 'MIDDLE',
  AgeType.HIGH: 'HIGH',
  AgeType.OUT_OF_SCHOOL_YOUTH: 'OUT_OF_SCHOOL_YOUTH',
  AgeType.ADULT: 'ADULT',
};
