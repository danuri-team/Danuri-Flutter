import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_item.freezed.dart';
part 'available_item.g.dart';

@freezed
abstract class AvailableItem with _$AvailableItem{
  factory AvailableItem({
    required String id,
    required String name,
    required int availableQuantity,
  }) = _AvailableItem;
  
  factory AvailableItem.fromJson(Map<String, dynamic> json) => _$AvailableItemFromJson(json);
}