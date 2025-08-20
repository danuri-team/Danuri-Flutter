// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RentalItemRequest _$RentalItemRequestFromJson(Map<String, dynamic> json) =>
    RentalItemRequest(
      itemId: json['item_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      usageId: json['usage_id'] as String,
    );

Map<String, dynamic> _$RentalItemRequestToJson(RentalItemRequest instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'quantity': instance.quantity,
      'usage_id': instance.usageId,
    };
