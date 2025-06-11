// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_rental_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemRentalRequest _$ItemRentalRequestFromJson(Map<String, dynamic> json) =>
    _ItemRentalRequest(
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ItemRentalRequestToJson(_ItemRentalRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };
