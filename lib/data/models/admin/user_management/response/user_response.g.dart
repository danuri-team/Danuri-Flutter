// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: $enumDecode(_$AgeTypeEnumMap, json['age']),
      phone: json['phone'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      usageCount: (json['usage_count'] as num).toInt(),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': _$AgeTypeEnumMap[instance.age]!,
      'phone': instance.phone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'usage_count': instance.usageCount,
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
