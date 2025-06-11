import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
abstract class SignUpRequest with _$SignUpRequest{
  factory SignUpRequest({
    required String companyId,
    required String email,
    required String password,
    required String phone,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
}