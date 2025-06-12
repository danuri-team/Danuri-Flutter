// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvailableItemsResponse _$AvailableItemsResponseFromJson(
        Map<String, dynamic> json) =>
    _AvailableItemsResponse(
      availableItems: (json['availableItems'] as List<dynamic>)
          .map((e) => AvailableItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvailableItemsResponseToJson(
        _AvailableItemsResponse instance) =>
    <String, dynamic>{
      'availableItems': instance.availableItems,
    };
