import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_item_request.freezed.dart';
part 'return_item_request.g.dart';

@freezed
abstract class ReturnItemRequest with _$ReturnItemRequest{
  factory ReturnItemRequest({
    required int returned_quantity,
    required String comment,
  }) = _ReturnItemRequest;

  factory ReturnItemRequest.fromJson(Map<String, dynamic> json) => _$ReturnItemRequestFromJson(json);
}