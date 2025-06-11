import 'package:freezed_annotation/freezed_annotation.dart';

part 'renewal_token_request.freezed.dart';
part 'renewal_token_request.g.dart';

@freezed
abstract class RenewalTokenRequest with _$RenewalTokenRequest{
  factory RenewalTokenRequest({
    required String refreshToken,
  }) = _RenewalTokenRequest;

  factory RenewalTokenRequest.fromJson(Map<String, dynamic> json) => _$RenewalTokenRequestFromJson(json);
}