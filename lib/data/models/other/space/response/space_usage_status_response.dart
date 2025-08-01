import 'package:json_annotation/json_annotation.dart';

part 'space_usage_status_response.g.dart';

@JsonSerializable()
class SpaceUsageStatusResponse {
  @JsonKey(name: 'space_id')
  final String spaceId;
  final String name;
  @JsonKey(name: 'start_at')
  final List<int> startAt;
  @JsonKey(name: 'end_at')
  final List<int> endAt;
  @JsonKey(name: 'is_available')
  final bool isAvailable;

  SpaceUsageStatusResponse({
    required this.spaceId,
    required this.name,
    required this.startAt,
    required this.endAt,
    required this.isAvailable,
  });

  factory SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceUsageStatusResponseToJson(this);
}
