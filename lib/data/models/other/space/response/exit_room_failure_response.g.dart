// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exit_room_failure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExitRoomFailureResponse _$ExitRoomFailureResponseFromJson(
        Map<String, dynamic> json) =>
    ExitRoomFailureResponse(
      status: json['status'] as String,
      statusMessage: json['status_message'] as String,
    );

Map<String, dynamic> _$ExitRoomFailureResponseToJson(
        ExitRoomFailureResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_message': instance.statusMessage,
    };
