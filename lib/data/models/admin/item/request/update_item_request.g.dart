// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateItemRequest _$UpdateItemRequestFromJson(Map<String, dynamic> json) =>
    _UpdateItemRequest(
      name: json['name'] as String,
      total_quantity: (json['total_quantity'] as num).toInt(),
      available_quantity: (json['available_quantity'] as num).toInt(),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$UpdateItemRequestToJson(_UpdateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_quantity': instance.total_quantity,
      'available_quantity': instance.available_quantity,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
