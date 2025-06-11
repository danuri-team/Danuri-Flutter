import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_info_response.freezed.dart';
part 'space_usage_info_response.g.dart';

@freezed
abstract class SpaceUsageInfoResponse with _$SpaceUsageInfoResponse{
  factory SpaceUsageInfoResponse({
    required String spaceId,
    required String usageId,
    required String spaceName,
    required String startAt,
    required String endAt,
    required List rentalItem,
  }) = _SpaceUsageInfoResponse;

  factory SpaceUsageInfoResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageInfoResponseFromJson(json);
}