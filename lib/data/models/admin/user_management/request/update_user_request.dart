import 'package:danuri_flutter/data/models/admin/enum/age_type.dart';
import 'package:danuri_flutter/data/models/admin/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest{
  factory UpdateUserRequest({
    required String name,
    required SexType sex,
    required AgeType age,
    required String phone, 
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestFromJson(json);
}