// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateItemRequest _$UpdateItemRequestFromJson(Map<String, dynamic> json) =>
    UpdateItemRequest(
      name: json['name'] as String,
      totalQuantity: (json['total_quantity'] as num).toInt(),
      availableQuantity: (json['available_quantity'] as num).toInt(),
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$UpdateItemRequestToJson(UpdateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_quantity': instance.totalQuantity,
      'available_quantity': instance.availableQuantity,
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
