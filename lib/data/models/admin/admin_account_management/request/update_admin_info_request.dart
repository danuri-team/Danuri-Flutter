import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_admin_info_request.freezed.dart';
part 'update_admin_info_request.g.dart';

@freezed
abstract class UpdateAdminInfoRequest with _$UpdateAdminInfoRequest{
  factory UpdateAdminInfoRequest({
    required String name,
    required String email,
    required String phone,
  }) = _UpdateAdminInfoRequest;

  factory UpdateAdminInfoRequest.fromJson(Map<String, dynamic> json) => _$UpdateAdminInfoRequestFromJson(json);
}