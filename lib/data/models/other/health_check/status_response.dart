import 'package:danuri_flutter/core/enum/status_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status_response.g.dart';

@JsonSerializable()
class StatusResponse{
  final StatusType status;

  StatusResponse({
    required this.status,
  });

  factory StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusResponseToJson(this);
}