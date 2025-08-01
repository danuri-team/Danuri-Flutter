// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemAvailableRental _$ItemAvailableRentalFromJson(Map<String, dynamic> json) =>
    ItemAvailableRental(
      id: json['id'] as String,
      name: json['name'] as String,
      availableQuantity: (json['available_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ItemAvailableRentalToJson(
        ItemAvailableRental instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_quantity': instance.availableQuantity,
    };
