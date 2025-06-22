import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_request.freezed.dart';
part 'user_login_request.g.dart';

@freezed
abstract class UserLoginRequest with _$UserLoginRequest{
  factory UserLoginRequest({
    required String phone,
  }) = _UserLoginRequest;

  factory UserLoginRequest.fromJson(Map<String, dynamic> json) => _$UserLoginRequestFromJson(json);
}