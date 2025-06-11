import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition_check_response.freezed.dart';
part 'condition_check_response.g.dart';

@freezed
abstract class ConditionCheckResponse with _$ConditionCheckResponse{
  factory ConditionCheckResponse({
    required String status,
  }) = _ConditionCheckResponse;

  factory ConditionCheckResponse.fromJson(Map<String, dynamic> json) => _$ConditionCheckResponseFromJson(json);
}