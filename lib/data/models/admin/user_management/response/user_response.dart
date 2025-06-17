import 'package:danuri_flutter/data/models/admin/enum/age_type.dart';
import 'package:danuri_flutter/data/models/admin/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse{
  factory UserResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String name,
    required SexType sex,
    required AgeType age,
    required String phone,
    required String createdAt,
    required String updatedAt,
    required int usageCount,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}