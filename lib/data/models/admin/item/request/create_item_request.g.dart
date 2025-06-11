// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateItemRequest _$CreateItemRequestFromJson(Map<String, dynamic> json) =>
    _CreateItemRequest(
      name: json['name'] as String,
      totalQuantity: json['totalQuantity'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$CreateItemRequestToJson(_CreateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'totalQuantity': instance.totalQuantity,
      'status': instance.status,
    };
