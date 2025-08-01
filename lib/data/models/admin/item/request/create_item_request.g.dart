// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateItemRequest _$CreateItemRequestFromJson(Map<String, dynamic> json) =>
    CreateItemRequest(
      name: json['name'] as String,
      totalQuantity: (json['total_quantity'] as num).toInt(),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$CreateItemRequestToJson(CreateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_quantity': instance.totalQuantity,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
