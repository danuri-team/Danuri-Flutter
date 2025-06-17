import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_success_response.freezed.dart';
part 'check_success_response.g.dart';

@freezed
abstract class CheckSuccessResponse with _$CheckSuccessResponse{
  factory CheckSuccessResponse({
    required bool isSuccess,
    required String massage,
  }) = _CheckSuccessResponse;
  factory CheckSuccessResponse.fromJson(Map<String, dynamic> json) => _$CheckSuccessResponseFromJson(json);
}