import 'package:json_annotation/json_annotation.dart';

part 'create_user_request.g.dart';

@JsonSerializable()
class CreateUserRequest {
  @JsonKey(name: 'company_id')
  final String companyId;
  final String name;
  final String sex;
  final String age;
  final String phone;

  CreateUserRequest({
    required this.companyId,
    required this.name,
    required this.sex,
    required this.age,
    required this.phone,
  });

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);
}
