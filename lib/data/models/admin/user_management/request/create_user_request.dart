import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_request.g.dart';

@JsonSerializable()
class CreateUserRequest {
  @JsonKey(name: 'company_id')
  final String companyId;
  final String name;
  final SexType sex;
  final AgeType age;
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
