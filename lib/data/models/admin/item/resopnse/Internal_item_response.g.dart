// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Internal_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InternalItemResponse _$InternalItemResponseFromJson(
        Map<String, dynamic> json) =>
    _InternalItemResponse(
      internalItems: (json['internalItems'] as List<dynamic>)
          .map((e) => ItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InternalItemResponseToJson(
        _InternalItemResponse instance) =>
    <String, dynamic>{
      'internalItems': instance.internalItems,
    };
