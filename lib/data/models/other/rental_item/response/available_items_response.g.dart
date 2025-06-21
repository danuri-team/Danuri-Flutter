// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemAvailableRental _$ItemAvailableRentalFromJson(Map<String, dynamic> json) =>
    _ItemAvailableRental(
      id: json['id'] as String,
      name: json['name'] as String,
      available_quantity: (json['available_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ItemAvailableRentalToJson(
        _ItemAvailableRental instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_quantity': instance.available_quantity,
    };
