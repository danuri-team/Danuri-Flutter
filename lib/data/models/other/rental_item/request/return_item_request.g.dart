// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReturnItemRequest _$ReturnItemRequestFromJson(Map<String, dynamic> json) =>
    _ReturnItemRequest(
      returned_quantity: (json['returned_quantity'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$ReturnItemRequestToJson(_ReturnItemRequest instance) =>
    <String, dynamic>{
      'returned_quantity': instance.returned_quantity,
      'comment': instance.comment,
    };
