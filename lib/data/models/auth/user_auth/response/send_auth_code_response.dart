import 'package:json_annotation/json_annotation.dart';

part 'send_auth_code_response.g.dart';

@JsonSerializable()
class SendAuthCodeResponse{
  @JsonKey(name: 'is_success')
  final bool isSuccess;
  final String massage;

  SendAuthCodeResponse({
    required this.isSuccess,
    required this.massage,
  });

  factory SendAuthCodeResponse.fromJson(Map<String, dynamic> json) => _$SendAuthCodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendAuthCodeResponseToJson(this);
}