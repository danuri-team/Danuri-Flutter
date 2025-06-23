import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/role_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest{
  factory UpdateUserRequest({
    required String name,
    required String email,
    required String phone, 
    required RoleType role,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestFromJson(json);
}