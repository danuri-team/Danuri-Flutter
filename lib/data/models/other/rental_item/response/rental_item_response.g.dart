// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RentalItemResponse _$RentalItemResponseFromJson(Map<String, dynamic> json) =>
    RentalItemResponse(
      itemName: json['item_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      returnedQuantity: (json['returned_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$RentalItemResponseToJson(RentalItemResponse instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'quantity': instance.quantity,
      'returned_quantity': instance.returnedQuantity,
    };
