// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: $enumDecode(_$AgeTypeEnumMap, json['age']),
      phone: json['phone'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      usage_count: (json['usage_count'] as num).toInt(),
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': _$AgeTypeEnumMap[instance.age]!,
      'phone': instance.phone,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'usage_count': instance.usage_count,
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
