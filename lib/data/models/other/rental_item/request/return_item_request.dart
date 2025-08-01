import 'package:json_annotation/json_annotation.dart';

part 'return_item_request.g.dart';

@JsonSerializable()
class ReturnItemRequest {
  @JsonKey(name: 'returned_quantity')
  final int returnedQuantity;
  final String comment;

  ReturnItemRequest({
    required this.returnedQuantity,
    required this.comment,
  });

  factory ReturnItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ReturnItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnItemRequestToJson(this);
}
