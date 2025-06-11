import 'package:freezed_annotation/freezed_annotation.dart';

part 'specific_admin_info_response.freezed.dart';
part 'specific_admin_info_response.g.dart';

@freezed
abstract class SpecificAdminInfoResponse with _$SpecificAdminInfoResponse{
  factory SpecificAdminInfoResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String email,
    required String phone,
    required String role,
    required String status,
  }) = _SpecificAdminInfoResponse;

  factory SpecificAdminInfoResponse.fromJson(Map<String, dynamic> json) => _$SpecificAdminInfoResponseFromJson(json);
}