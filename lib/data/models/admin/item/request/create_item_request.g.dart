// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateItemRequest _$CreateItemRequestFromJson(Map<String, dynamic> json) =>
    _CreateItemRequest(
      name: json['name'] as String,
      total_quantity: (json['total_quantity'] as num).toInt(),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$CreateItemRequestToJson(_CreateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_quantity': instance.total_quantity,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
