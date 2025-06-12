// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvailableItem _$AvailableItemFromJson(Map<String, dynamic> json) =>
    _AvailableItem(
      id: json['id'] as String,
      name: json['name'] as String,
      availableQuantity: (json['availableQuantity'] as num).toInt(),
    );

Map<String, dynamic> _$AvailableItemToJson(_AvailableItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'availableQuantity': instance.availableQuantity,
    };
