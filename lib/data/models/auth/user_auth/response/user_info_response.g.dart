// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) =>
    _UserInfoResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: $enumDecode(_$AgeTypeEnumMap, json['age']),
      companyId: json['companyId'] as String,
    );

Map<String, dynamic> _$UserInfoResponseToJson(_UserInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': _$AgeTypeEnumMap[instance.age]!,
      'companyId': instance.companyId,
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
