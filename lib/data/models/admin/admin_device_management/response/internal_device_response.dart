import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_device_response.freezed.dart';
part 'internal_device_response.g.dart';

@freezed
abstract class InternalDeviceResponse with _$InternalDeviceResponse{
  factory InternalDeviceResponse({
    required String id,
    required String created_at,
  }) = _InternalDeviceResponse;

  factory InternalDeviceResponse.fromJson(Map<String, dynamic> json) => _$InternalDeviceResponseFromJson(json);
}