// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageStatus _$SpaceUsageStatusFromJson(Map<String, dynamic> json) =>
    _SpaceUsageStatus(
      id: json['id'] as String?,
      name: json['name'] as String,
      startAt: (json['startAt'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      endAt: (json['endAt'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$SpaceUsageStatusToJson(_SpaceUsageStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'isAvailable': instance.isAvailable,
    };
