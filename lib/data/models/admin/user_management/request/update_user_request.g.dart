// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _UpdateUserRequest(
      name: json['name'] as String,
      sex: $enumDecode(_$SexTypeEnumMap, json['sex']),
      age: json['age'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(_UpdateUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sex': _$SexTypeEnumMap[instance.sex]!,
      'age': instance.age,
      'phone': instance.phone,
    };

const _$SexTypeEnumMap = {
  SexType.MALE: 'MALE',
  SexType.FEMALE: 'FEMALE',
};
