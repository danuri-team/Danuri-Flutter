import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_code_response.freezed.dart';
part 'auth_code_response.g.dart';

@freezed
abstract class AuthCodeResponse with _$AuthCodeResponse{
  factory AuthCodeResponse({
    required String authCode,
  }) = _AuthCodeResponse;

  factory AuthCodeResponse.fromJson(Map<String, dynamic> json) => _$AuthCodeResponseFromJson(json);
}