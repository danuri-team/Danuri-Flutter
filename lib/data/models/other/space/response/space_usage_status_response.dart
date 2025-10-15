import 'package:json_annotation/json_annotation.dart';

part 'space_usage_status_response.g.dart';

@JsonSerializable()
class SpaceUsageStatusResponse {
  @JsonKey(name: 'space_id')
  final String spaceId;
  final String name;
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @JsonKey(name: 'time_slots')
  final List<TimeSlots> timeSlots;

  SpaceUsageStatusResponse({
    required this.spaceId,
    required this.name,
    required this.isAvailable,
    required this.timeSlots,
  });

  factory SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceUsageStatusResponseToJson(this);
}

@JsonSerializable()
class TimeSlots {
  @JsonKey(name: 'start_time')
  final List<int> startTime;
  @JsonKey(name: 'end_time')
  final List<int> endTime;
  @JsonKey(name: 'is_available')
  final bool isAvailable;

  TimeSlots({
    required this.startTime,
    required this.endTime,
    required this.isAvailable,
  });

  factory TimeSlots.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotsFromJson(json);

  Map<String, dynamic> toJson() => _$TimeSlotsToJson(this);
}