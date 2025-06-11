// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceResponse _$SpaceResponseFromJson(Map<String, dynamic> json) =>
    _SpaceResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      name: json['name'] as String,
      startAt: (json['startAt'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      endAt: (json['endAt'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      usageCount: (json['usageCount'] as num).toInt(),
    );

Map<String, dynamic> _$SpaceResponseToJson(_SpaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'name': instance.name,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'usageCount': instance.usageCount,
    };
