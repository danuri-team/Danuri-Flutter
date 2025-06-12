// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnItemRequest _$ReturnItemRequestFromJson(Map<String, dynamic> json) =>
    _ReturnItemRequest(
      returnedQuantity: (json['returnedQuantity'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$ReturnItemRequestToJson(_ReturnItemRequest instance) =>
    <String, dynamic>{
      'returnedQuantity': instance.returnedQuantity,
      'comment': instance.comment,
    };
