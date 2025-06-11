// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      name: json['name'] as String,
      sex: json['sex'] as String,
      age: json['age'] as String,
      phone: json['phone'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      usageCount: (json['usageCount'] as num).toInt(),
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'name': instance.name,
      'sex': instance.sex,
      'age': instance.age,
      'phone': instance.phone,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'usageCount': instance.usageCount,
    };
