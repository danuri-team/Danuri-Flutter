import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_specific_device_response.freezed.dart';
part 'internal_specific_device_response.g.dart';

@freezed
abstract class InternalSpecificDeviceResponse with _$InternalSpecificDeviceResponse{
  factory InternalSpecificDeviceResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String createdAt,
    String? endAt,
  }) = _InternalSpecificDeviceResponse;

  factory InternalSpecificDeviceResponse.fromJson(Map<String, dynamic> json) => _$InternalSpecificDeviceResponseFromJson(json);
}