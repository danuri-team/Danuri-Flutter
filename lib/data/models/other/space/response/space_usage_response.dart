import 'package:danuri_flutter/data/models/other/space/response/space_usage_info_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'space_usage_response.g.dart';

@JsonSerializable()
class SpaceUsageResponse {
  @JsonKey(name: 'is_using_space')
  final bool isUsingSpace;
  @JsonKey(name: 'space_usage_info')
  final SpaceUsageInfoResponse spaceUsageInfo;

  SpaceUsageResponse({
    required this.isUsingSpace,
    required this.spaceUsageInfo,
  });

  factory SpaceUsageResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceUsageResponseToJson(this);
}
