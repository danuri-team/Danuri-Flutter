import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_item_request.g.dart';

@JsonSerializable()
class CreateItemRequest {
  final String name;
  @JsonKey(name: 'total_quantity')
  final int totalQuantity;
  final StatusType status;

  CreateItemRequest({
    required this.name,
    required this.totalQuantity,
    required this.status,
  });

  factory CreateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateItemRequestToJson(this);
}
