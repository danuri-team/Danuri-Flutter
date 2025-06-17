import 'package:danuri_flutter/data/models/other/rental_item/response/available_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_info_response.freezed.dart';
part 'space_usage_info_response.g.dart';

@freezed
abstract class SpaceUsageInfoResponse with _$SpaceUsageInfoResponse{
  factory SpaceUsageInfoResponse({
    required String spaceId,
    required String usageId,
    required String spaceName,
    required List<AvailableItem> rentalItem,
    required String startAt,
    required String endAt,
  }) = _SpaceUsageInfoResponse;

  factory SpaceUsageInfoResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageInfoResponseFromJson(json);
}