import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_space_status_response.freezed.dart';
part 'usage_space_status_response.g.dart';

@freezed
abstract class UsageSpaceStatusResponse with _$UsageSpaceStatusResponse{
  factory UsageSpaceStatusResponse({
    required List usageSpaceStatus,
  }) = _SpaceUsageStatusResponse;

  factory UsageSpaceStatusResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageStatusResponseFromJson(json);
}