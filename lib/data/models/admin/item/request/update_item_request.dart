import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_item_request.freezed.dart';
part 'update_item_request.g.dart';

@freezed
abstract class UpdateItemRequest with _$UpdateItemRequest{
  factory UpdateItemRequest({
    required String name,
    required int total_quantity,
    required int available_quantity,
    required StatusType status,
  }) = _UpdateItemRequest;

  factory UpdateItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateItemRequestFromJson(json);
}