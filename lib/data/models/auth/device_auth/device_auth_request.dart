import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_auth_request.freezed.dart';
part 'device_auth_request.g.dart';

@freezed
abstract class DeviceAuthRequest with _$DeviceAuthRequest{
  factory DeviceAuthRequest({
    required String device_id,
  }) = _DeviceAuthRequest;

  factory DeviceAuthRequest.fromJson(Map<String, dynamic> json) => _$DeviceAuthRequestFromJson(json);
}