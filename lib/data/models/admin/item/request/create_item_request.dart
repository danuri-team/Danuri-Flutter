import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_item_request.freezed.dart';
part 'create_item_request.g.dart';

@freezed
abstract class CreateItemRequest with _$CreateItemRequest{
  factory CreateItemRequest({
    required String name,
    required String totalQuantity,
    required String status,
  }) = _CreateItemRequest;

  factory CreateItemRequest.fromJson(Map<String, dynamic> json) => _$CreateItemRequestFromJson(json);
}