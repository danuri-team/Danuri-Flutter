// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rented_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RentedItemResponse _$RentedItemResponseFromJson(Map<String, dynamic> json) =>
    _RentedItemResponse(
      id: json['id'] as String,
      item_id: json['item_id'] as String,
      item_name: json['item_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      borrowed_at: json['borrowed_at'] as String,
      returned_quantity: (json['returned_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$RentedItemResponseToJson(_RentedItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.item_id,
      'item_name': instance.item_name,
      'quantity': instance.quantity,
      'borrowed_at': instance.borrowed_at,
      'returned_quantity': instance.returned_quantity,
    };
