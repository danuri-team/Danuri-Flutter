import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_item_request.freezed.dart';
part 'create_item_request.g.dart';

@freezed
abstract class CreateItemRequest with _$CreateItemRequest{
  factory CreateItemRequest({
    required String name,
    required int total_quantity,
    required StatusType status,
  }) = _CreateItemRequest;

  factory CreateItemRequest.fromJson(Map<String, dynamic> json) => _$CreateItemRequestFromJson(json);
}