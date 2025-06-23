// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) =>
    _ItemResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      total_quantity: (json['total_quantity'] as num).toInt(),
      available_quantity: (json['available_quantity'] as num).toInt(),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$ItemResponseToJson(_ItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total_quantity': instance.total_quantity,
      'available_quantity': instance.available_quantity,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
