import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_code_login_request.freezed.dart';
part 'auth_code_login_request.g.dart';

@freezed
abstract class AuthCodeLoginRequest with _$AuthCodeLoginRequest{
  factory AuthCodeLoginRequest({
    required String phone,
    required String authCode,
  }) = _AuthCodeLoginRequest;

  factory AuthCodeLoginRequest.fromJson(Map<String, dynamic> json) => _$AuthCodeLoginRequestFromJson(json);
}