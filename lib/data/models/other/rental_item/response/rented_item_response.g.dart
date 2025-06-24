// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rented_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RentedItemResponse _$RentedItemResponseFromJson(Map<String, dynamic> json) =>
    RentedItemResponse(
      id: json['id'] as String,
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      borrowedAt: json['borrowed_at'] as String,
      returnedQuantity: (json['returned_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$RentedItemResponseToJson(RentedItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'quantity': instance.quantity,
      'borrowed_at': instance.borrowedAt,
      'returned_quantity': instance.returnedQuantity,
    };
