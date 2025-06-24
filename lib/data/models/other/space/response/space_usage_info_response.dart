import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'space_usage_info_response.g.dart';

@JsonSerializable()
class SpaceUsageInfoResponse {
  @JsonKey(name: 'space_id')
  final String spaceId;
  @JsonKey(name: 'usage_id')
  final String usageId;
  @JsonKey(name: 'space_name')
  final String spaceName;
  @JsonKey(name: 'rental_item')
  final List<ItemAvailableRental> rentalItem;
  @JsonKey(name: 'start_at')
  final String startAt;
  @JsonKey(name: 'end_at')
  String? endAt;

  SpaceUsageInfoResponse({
    required this.spaceId,
    required this.usageId,
    required this.spaceName,
    required this.rentalItem,
    required this.startAt,
    String? endAt,
  });

  factory SpaceUsageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceUsageInfoResponseToJson(this);
}
