import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_response.freezed.dart';
part 'user_info_response.g.dart';

@freezed
abstract class UserInfoResponse with _$UserInfoResponse{
  factory UserInfoResponse({
    required String id,
    required String name,
    required String phone,
    required SexType sex,
    required AgeType age,
    required String companyId,
  }) = _UserInfoResponse;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) => _$UserInfoResponseFromJson(json);
}