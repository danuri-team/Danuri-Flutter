import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_response.freezed.dart';
part 'status_response.g.dart';

@freezed
abstract class StatusResponse with _$StatusResponse{
  factory StatusResponse({
    required StatusType status,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);
}