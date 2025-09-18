import 'package:json_annotation/json_annotation.dart';

part 'device_auth_request.g.dart';

@JsonSerializable()
class DeviceAuthRequest {
  final String code;

  DeviceAuthRequest({
    required this.code,
  });

  factory DeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceAuthRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceAuthRequestToJson(this);
}
