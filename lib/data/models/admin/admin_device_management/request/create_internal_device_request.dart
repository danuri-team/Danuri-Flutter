import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_internal_device_request.freezed.dart';
part 'create_internal_device_request.g.dart';

@freezed
abstract class CreateInternalDeviceRequest with _$CreateInternalDeviceRequest{
  factory CreateInternalDeviceRequest({
    required String deviceId,
    required String spaceId,
  }) = _CreateInternalDeviceRequest;

  factory CreateInternalDeviceRequest.fromJson(Map<String, dynamic> json) => _$CreateInternalDeviceRequestFromJson(json);
}