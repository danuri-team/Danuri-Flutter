import 'package:danuri_flutter/data/models/admin/item/resopnse/item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Internal_item_response.freezed.dart';
part 'Internal_item_response.g.dart';

@freezed
abstract class InternalItemResponse with _$InternalItemResponse{
  factory InternalItemResponse({
    required List<ItemResponse> internalItems,
  }) = _InternalItemResponse;

  factory InternalItemResponse.fromJson(Map<String, dynamic> json) => _$InternalItemResponseFromJson(json); 
}