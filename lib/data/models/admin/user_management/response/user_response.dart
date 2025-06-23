import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse{
  factory UserResponse({
    required String id,
    required String name,
    required SexType sex,
    required AgeType age,
    required String phone,
    required String created_at,
    required String updated_at,
    required int usage_count,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}