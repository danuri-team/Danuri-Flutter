import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_request.freezed.dart';
part 'change_password_request.g.dart';

@freezed
abstract class ChangePasswordRequest with _$ChangePasswordRequest{
  factory ChangePasswordRequest({
    required String current_password,
    required String new_password,
    required String confirm_password,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);
}