import 'package:json_annotation/json_annotation.dart';

part 'exit_room_failure_response.g.dart';

@JsonSerializable()
class ExitRoomFailureResponse {
  final String status;
  @JsonKey(name: 'status_message')
  final String statusMessage;

  ExitRoomFailureResponse({
    required this.status,
    required this.statusMessage,
  });

  factory ExitRoomFailureResponse.fromJson(Map<String, dynamic> json) => _$ExitRoomFailureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExitRoomFailureResponseToJson(this);
}