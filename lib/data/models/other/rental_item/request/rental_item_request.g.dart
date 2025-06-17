// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RentalItemRequest _$RentalItemRequestFromJson(Map<String, dynamic> json) =>
    _RentalItemRequest(
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$RentalItemRequestToJson(_RentalItemRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };
