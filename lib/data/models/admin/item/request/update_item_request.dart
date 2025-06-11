import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_item_request.freezed.dart';
part 'update_item_request.g.dart';

@freezed
abstract class UpdateItemRequest with _$UpdateItemRequest{
  factory UpdateItemRequest({
    required String name,
    required String total_quantity,
    required String status,
  }) = _UpdateItemRequest;

  factory UpdateItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateItemRequestFromJson(json);
}