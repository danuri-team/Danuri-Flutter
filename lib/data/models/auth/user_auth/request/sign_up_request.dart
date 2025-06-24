import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest {
  @JsonKey(name: 'company_id')
  final String companyId;
  final String name;
  final String phone;
  final SexType sex;
  final AgeType age;

  SignUpRequest({
    required this.companyId,
    required this.name,
    required this.phone,
    required this.sex,
    required this.age,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
