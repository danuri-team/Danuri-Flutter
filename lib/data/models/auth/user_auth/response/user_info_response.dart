import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_info_response.g.dart';

@JsonSerializable()
class UserInfoResponse {
  final String id;
  final String name;
  final String phone;
  final SexType sex;
  final AgeType age;
  @JsonKey(name: 'company_id')
  final String companyId;

  UserInfoResponse({
    required this.id,
    required this.name,
    required this.phone,
    required this.sex,
    required this.age,
    required this.companyId,
  });

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoResponseToJson(this);
}
