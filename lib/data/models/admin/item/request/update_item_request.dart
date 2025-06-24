import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'update_item_request.g.dart';

@JsonSerializable()
class UpdateItemRequest{
final String name;
@JsonKey(name: 'total_quantity')
    final int totalQuantity;
    @JsonKey(name: 'available_quantity')
    final int availableQuantity;
    final StatusType status;

  UpdateItemRequest({
    required this.name,
    required this.totalQuantity,
    required this.availableQuantity,
    required this.status,
  });

  factory UpdateItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateItemRequestToJson(this);
}