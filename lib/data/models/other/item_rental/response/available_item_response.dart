import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_item_response.freezed.dart';
part 'available_item_response.g.dart';

@freezed
abstract class AvailableItemResponse with _$AvailableItemResponse{
  factory AvailableItemResponse({
    required List availableItems,
  }) = _AvailableItemResponse;

  factory AvailableItemResponse.fromJson(Map<String, dynamic> json) => _$AvailableItemResponseFromJson(json);
}