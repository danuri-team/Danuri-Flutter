// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RentalItemRequest _$RentalItemRequestFromJson(Map<String, dynamic> json) =>
    _RentalItemRequest(
      item_id: json['item_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$RentalItemRequestToJson(_RentalItemRequest instance) =>
    <String, dynamic>{
      'item_id': instance.item_id,
      'quantity': instance.quantity,
    };
