import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_auth_code_response.freezed.dart';
part 'send_auth_code_response.g.dart';

@freezed
abstract class SendAuthCodeResponse with _$SendAuthCodeResponse{
  factory SendAuthCodeResponse({
    required bool isSuccess,
    required String massage,
  }) = _SendAuthCodeResponse;

  factory SendAuthCodeResponse.fromJson(Map<String, dynamic> json) => _$SendAuthCodeResponseFromJson(json);
}