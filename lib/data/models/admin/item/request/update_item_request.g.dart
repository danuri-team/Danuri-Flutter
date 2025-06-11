// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateItemRequest _$UpdateItemRequestFromJson(Map<String, dynamic> json) =>
    _UpdateItemRequest(
      name: json['name'] as String,
      total_quantity: json['total_quantity'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$UpdateItemRequestToJson(_UpdateItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_quantity': instance.total_quantity,
      'status': instance.status,
    };
