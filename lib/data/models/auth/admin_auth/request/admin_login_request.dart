import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_login_request.freezed.dart';
part 'admin_login_request.g.dart';

@freezed
abstract class AdminLoginRequest with _$AdminLoginRequest{
  factory AdminLoginRequest({
    required String email,
    required String password,
  }) = _AdminLoginRequest;

  factory AdminLoginRequest.fromJson(Map<String, dynamic> json) => _$AdminLoginRequestFromJson(json);
}