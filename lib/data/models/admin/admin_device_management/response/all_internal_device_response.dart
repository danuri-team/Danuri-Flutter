import 'package:danuri_flutter/data/models/admin/admin_device_management/response/internal_specific_device_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_internal_device_response.freezed.dart';
part 'all_internal_device_response.g.dart';

@freezed
abstract class AllInternalDeviceResponse with _$AllInternalDeviceResponse{
  factory AllInternalDeviceResponse({
    required List<InternalSpecificDeviceResponse> devices,
  }) = _AllInternalDeviceResponse;

  factory AllInternalDeviceResponse.fromJson(Map<String, dynamic> json) => _$AllInternalDeviceResponseFromJson(json);
}