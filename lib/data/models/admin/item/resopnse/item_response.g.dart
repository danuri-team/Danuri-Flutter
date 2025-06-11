// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) =>
    _ItemResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      name: json['name'] as String,
      totalQuantity: (json['totalQuantity'] as num).toInt(),
      availableQuantity: (json['availableQuantity'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$ItemResponseToJson(_ItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'name': instance.name,
      'totalQuantity': instance.totalQuantity,
      'availableQuantity': instance.availableQuantity,
      'status': instance.status,
    };
