import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_response.g.dart';

@JsonSerializable()
class ItemResponse {
  final String id;
  final String name;
  @JsonKey(name: 'total_quantity')
  final int totalQuantity;
  @JsonKey(name: 'available_quantity')
  final int availableQuantity;
  final StatusType status;

  ItemResponse({
    required this.id,
    required this.name,
    required this.totalQuantity,
    required this.availableQuantity,
    required this.status,
  });

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItemResponseToJson(this);
}
