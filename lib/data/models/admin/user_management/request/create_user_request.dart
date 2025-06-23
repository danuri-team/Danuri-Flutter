import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_request.freezed.dart';
part 'create_user_request.g.dart';

@freezed
abstract class CreateUserRequest with _$CreateUserRequest{
  factory CreateUserRequest({
    required String company_id,
    required String name,
    required SexType sex,
    required AgeType age,
    required String phone, 
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) => _$CreateUserRequestFromJson(json);
}