import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_internal_specific_device_request.freezed.dart';
part 'update_internal_specific_device_request.g.dart';

@freezed
abstract class UpdateInternalSpecificDeviceRequest with _$UpdateInternalSpecificDeviceRequest{
  factory UpdateInternalSpecificDeviceRequest({
    required String spaceId,
    required bool isActivate,
  }) = _UpdateInternalSpecificDeviceRequest;

  factory UpdateInternalSpecificDeviceRequest.fromJson(Map<String, dynamic> json) => _$UpdateInternalSpecificDeviceRequestFromJson(json);
}