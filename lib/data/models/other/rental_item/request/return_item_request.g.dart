// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnItemRequest _$ReturnItemRequestFromJson(Map<String, dynamic> json) =>
    ReturnItemRequest(
      returnedQuantity: (json['returned_quantity'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$ReturnItemRequestToJson(ReturnItemRequest instance) =>
    <String, dynamic>{
      'returned_quantity': instance.returnedQuantity,
      'comment': instance.comment,
    };
